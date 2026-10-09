package service

import (
	"bytes"
	"compress/zlib"
	"encoding/base64"
	"encoding/json"
	"iptv-api/bootstrap"
	"iptv-api/dao"
	"iptv-api/dto"
	"iptv-api/models"
	"iptv-api/until"
	"log"
	"math/rand"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"time"
)

func Getver() dto.GetverRes {
	var res dto.GetverRes

	var cfg = dao.GetConfig()

	// **必须下发完整四段**（基底.编译号），不能只给编译号。
	//
	// APK 侧 UpdateRepository.check 拿本机 versionName（完整四段，如 1.1.0.005）
	// 与这个字段做**字符串比较**（旧实现如此，重建仓沿用了同一口径）。
	// 只下发纯编译号时，"1.1.0.005" < "5" 恒成立 ⇒ 永远判为"有新版本"，
	// 用户每次进关于页都被推一次下载同一个包（实测现象）。
	//
	// 基底取 **ClientPublishedBase**（线上包编译时用的那版）而不是当前基底：
	// 换过基底但还没重新编译发布时两者不同，用当前的会让客户端看到
	// 「新基底 + 旧编译号」这样一个并不存在的版本。口径与面板
	// （ClientApkInfo 的 curVersion）必须逐字一致，否则同一个包两处显示不同版本。
	res.AppVer = until.FormatClientVersion(until.ClientPublishedBase(), cfg.Build.Version)
	res.UpSets = cfg.App.Update.Set
	res.UpText = until.FixedUpdateText
	res.AppURL = cfg.ServerUrl + "/app/" + cfg.Build.Name + ".apk"
	// 路径必须是**线上包的真实落点** `/config/app/...`。
	// 原来写的是相对路径 `./app/...`，运行目录是 `/app` 而包在持久卷 `/config/app/`，
	// os.Stat 必然失败 ⇒ GetFileSize 恒返回 "0 MB"，客户端更新弹窗里的包大小一直是 0。
	res.UpSize = until.GetFileSize(bootstrap.OfficialAPKPath(cfg.Build.Name))
	return res
}

func GetBg() string {
	// 获取指定目录下的所有png文件
	dir := "/config/images/bj"
	files, err := filepath.Glob(filepath.Join(dir, "*.png"))
	if err != nil {
		return ""
	}
	if len(files) == 0 {
		return ""
	}

	pngs := make([]string, len(files))
	for i, file := range files {
		pngs[i] = filepath.Base(file)
	}
	randomIndex := rand.Intn(len(pngs))
	return pngs[randomIndex]
}

func ApkLogin(user models.IptvUser) dto.LoginRes {

	var result dto.LoginRes

	var cfg = dao.GetConfig()

	result.IP = user.IP
	result.ID = user.Name
	result.Status = user.Status
	result.NetType = user.NetType
	result.Location = user.Region

	// 未下发的字段已在 dto.LoginRes 里删除（见该类型注释）：
	// showinterval / autoupdate / updateinterval / setver / exp / arrsrc /
	// arrproxy / exps / stus / movieengine —— 旧注释说它们"仍留在 LoginRes 里"，
	// 现在不成立了，注释一并更新。
	result.AdText = cfg.Ad.AdText
	result.Decoder = cfg.App.Decoder
	result.AppVer = cfg.Build.Version
	result.BuffTimeOut = cfg.App.BuffTimeout
	result.TipLoading = cfg.Tips.Loading
	result.DataURL = cfg.ServerUrl + "/apk/channels"
	result.AppURL = cfg.ServerUrl + "/app/" + cfg.Build.Name + ".apk"
	result.ShowTime = cfg.Ad.ShowTime
	result.TipUserNoReg = "当前账号 " + strconv.FormatInt(user.Name, 10) + " " + cfg.Tips.UserNoReg
	result.TipUserExpired = "当前账号 " + strconv.FormatInt(user.Name, 10) + " " + cfg.Tips.UserExpired
	result.TipUserForbidden = "当前账号 " + strconv.FormatInt(user.Name, 10) + " " + cfg.Tips.UserForbidden
	// 广告内容（客户端退出弹窗那行）：默认固定文案，只有定制授权才下发
	// 后台配置的自定义值；授权失效会立刻回落默认（见 ApkAdInfo）。
	result.AdInfo = ApkAdInfo()
	result.RandKey = until.Md5(time.Now().Format("20060102150405") + strconv.FormatInt(user.Name, 10))

	return getUserInfo(user, result)
}

// GetChannels 取 APK 客户端的频道列表。
func GetChannels(channel dto.DataReqDto, base string) string {
	resList := []dto.ChannelListDto{{
		Name: "我的收藏",
		Data: []dto.ChannelData{},
		Tmp:  "6L+Z5Y+q5piv5Y2g5L2N77yM5LiN54S25rKh6aKR6YGT5a655piT5Ye6546w6ZSZ6K+v77yM5LirYXBr5Yqg5a+G5pWw5o2u6ZyA6KaB5YWI5YigMTI45a2X6IqC77yM5rKh6aKR6YGT5bCx5LiN5aSfMTI4",
	}}

	var dbUser models.IptvUser
	err := dao.DB.Where("mac = ?", channel.Mac).First(&dbUser).Error
	if err != nil {

		resList = append(resList, dto.ChannelListDto{})
	}

	now := time.Now()
	todayZero := time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, now.Location())
	userExp := int64(until.DiffDays(todayZero.Unix(), dbUser.ExpireTime))
	if userExp <= 0 {
		resList = append(resList, dto.ChannelListDto{})
	}

	var meal models.IptvMeals
	dao.DB.Model(&models.IptvMeals{}).Where("status = ? and id = ?", 1, dbUser.MealID).First(&meal)
	cList := strings.Split(meal.Content, ",")

	var channelList []models.IptvChannel

	if len(cList) > 1 || (len(cList) == 1 && cList[0] != "") {
		dao.DB.Model(&models.IptvChannel{}).Where("category_id in ? and status = 1", cList).Order("sort asc").Find(&channelList)
	} else {
		resList = append(resList, dto.ChannelListDto{
			Name: "该套餐无频道",
		})

		jsonData, _ := json.Marshal(resList)
		jsonStr := until.DecodeUnicode(string(jsonData))
		return encrypt(jsonStr, channel.Rand)
	}

	var categoryList []models.IptvCategory
	dao.DB.Model(&models.IptvCategory{}).Where("id in ? and enable = ?", cList, 1).Order("sort asc").Find(&categoryList)

	cfg := dao.GetConfig()
	for _, v := range categoryList {
		var tmpData []dto.ChannelData
		var i int64 = 1
		var dataMap = make(map[string][]string)
		var tmpMap = make(map[string]int64)

		for _, channel := range until.CaGetChannels(v, false, base) {
			if v.Proxy && cfg.Proxy.Status == 1 && strings.TrimSpace(channel.PUrl) != "" {
				dataMap[channel.Name] = append(dataMap[channel.Name], strings.TrimSpace(channel.PUrl))
				if _, ok := tmpMap[channel.Name]; !ok {
					tmpMap[channel.Name] = i
					i++
				}
				continue
			}
			dataMap[channel.Name] = append(dataMap[channel.Name], strings.TrimSpace(channel.Url))
			if _, ok := tmpMap[channel.Name]; !ok {
				tmpMap[channel.Name] = i
				i++
			}
		}

		for k, v1 := range tmpMap {
			tmpData = append(tmpData, dto.ChannelData{
				Num:    v1,
				Name:   k,
				Source: dataMap[k],
			})
		}

		sort.Slice(tmpData, func(i, j int) bool {
			return tmpData[i].Num < tmpData[j].Num
		})

		resList = append(resList, dto.ChannelListDto{
			ID:   int64(v.Sort + 3),
			Name: v.Name,
			Data: tmpData,
		})
	}
	sort.Slice(resList, func(i, j int) bool {
		return resList[i].ID < resList[j].ID
	})
	jsonData, _ := json.Marshal(resList)
	jsonStr := until.DecodeUnicode(string(jsonData))

	return encrypt(jsonStr, channel.Rand)
}

func encrypt(str string, randkey string) string {
	encoded, _ := CompressString(str)

	// Step 2: MD5 加密 key

	hashedKey := until.Md5(until.GetAesKey() + randkey)

	// Step 3: 截取 hashedKey 的一部分
	subKey := hashedKey[7:23]

	// Step 3: AES 加密
	aes := until.NewAes(subKey, "AES-128-ECB", "")
	encrypted, err := aes.Encrypt(encoded)

	if err != nil {
		return ""
	}

	// Step 4: 替换字符
	// encrypted := string(ciphertext)
	encrypted = strings.ReplaceAll(encrypted, "f", "&")
	encrypted = strings.ReplaceAll(encrypted, "b", "f")
	encrypted = strings.ReplaceAll(encrypted, "&", "b")
	encrypted = strings.ReplaceAll(encrypted, "t", "#")
	encrypted = strings.ReplaceAll(encrypted, "y", "t")
	encrypted = strings.ReplaceAll(encrypted, "#", "y")

	// Step 5: 反转和截取
	start := 44
	length := 128
	end := start + length

	// 防止越界
	if end > len(encrypted) {
		end = len(encrypted)
	}

	coded := encrypted[start:end]
	reversed := until.ReverseString(coded)
	finalEncrypted := reversed + encrypted

	return finalEncrypted
}

func CompressString(input string) (string, error) {
	var buf bytes.Buffer
	w := zlib.NewWriter(&buf)

	_, err := w.Write([]byte(input))
	if err != nil {
		return "", err
	}
	err = w.Close()
	if err != nil {
		return "", err
	}
	return base64.StdEncoding.EncodeToString(buf.Bytes()), nil
}

func getUserInfo(user models.IptvUser, result dto.LoginRes) dto.LoginRes {
	var cfg = dao.GetConfig()

	// 「点播管理」已整体下线：原 `movieengine.model` 恒下发空数组的占位也一并删除 ——
	// 服务端不再需要这个字段（dto 里已移除），客户端全仓也搜不到 `movieengine`
	// 的任何读取（0 引用）。留着一个永远为空的字段只会误导下一位读者。

	if cfg.App.NeedAuthor == 0 {
		result = getMealName(user, result)
		log.Printf("用户: %d 登录成功,IP: %s 设备ID: %s 套餐: %s \n", result.ID, result.IP, user.DeviceID, result.MealName)
	} else if cfg.App.NeedAuthor == 1 && user.Status != -1 {
		result = getMealName(user, result)
		log.Printf("用户: %d 登录成功,IP: %s 设备ID: %s 套餐: %s\n", result.ID, result.IP, user.DeviceID, result.MealName)
	} else {
		log.Printf("用户: %d 登录成功,IP: %s 设备ID: %s 未授权 \n", result.ID, result.IP, user.DeviceID)
	}

	return result
}

func getMealName(user models.IptvUser, result dto.LoginRes) dto.LoginRes {
	var meals []models.IptvMeals
	var caList []models.IptvCategory
	dao.DB.Model(&models.IptvMeals{}).Where("status = ?", 1).Find(&meals)
	dao.DB.Model(&models.IptvCategory{}).Where("enable = ?", 1).Find(&caList)

	for _, v := range meals {
		if v.ID == 1000 && result.MealName == "" {
			result.MealName = v.Name
			for _, v1 := range strings.Split(v.Content, ",") {
				v1Int64, err := strconv.ParseInt(v1, 10, 64)
				if err != nil {
					continue
				}
				for _, v2 := range caList {
					if v2.ID == v1Int64 {
						result.ProvList = append(result.ProvList, v2.Name)
					}

				}
			}

		}
		if v.ID == user.MealID {
			result.MealName = v.Name
			for _, v1 := range strings.Split(v.Content, ",") {
				v1Int64, err := strconv.ParseInt(v1, 10, 64)
				if err != nil {
					continue
				}
				for _, v2 := range caList {
					if v2.ID == v1Int64 {
						result.ProvList = append(result.ProvList, v2.Name)
					}

				}
			}
		}

	}
	return result
}

func CheckUserDb(user dto.ApkUser, ip string) models.IptvUser {
	var dbUser models.IptvUser
	res := dao.DB.Where("mac = ?", user.Mac).Find(&dbUser)
	if res.RowsAffected == 0 {
		return AddUser(user, ip)
	}

	dbUser.LastTime = time.Now().Unix()
	dbUser.IP = ip
	dbUser.Region = until.GetIpRegion(user.IP)
	dbUser.NetType = user.NetType
	dbUser.DeviceID = user.DeviceID

	dao.DB.Model(&models.IptvUser{}).Where("mac = ?", user.Mac).Updates(dbUser)

	return dbUser
}

func AddUser(user dto.ApkUser, ip string) models.IptvUser {
	user.IP = ip
	user.Region = until.GetIpRegion(ip)
	var cfg = dao.GetConfig()

	dbData := models.IptvUser{
		Name:     int64(genName()),
		Mac:      user.Mac,
		DeviceID: user.DeviceID,
		Model:    user.Model,
		IP:       user.IP,
		Region:   user.Region,
		LastTime: time.Now().Unix(),
		MealID:   1000,
	}

	switch cfg.App.NeedAuthor {
	case 0:
		dbData.Status = 999
		dbData.Marks = "自动授权"
		dbData.ExpireTime = 0
	case 1:
		dbData.Status = -1
		dbData.Marks = "未授权"
		dbData.ExpireTime = 0
	}

	dao.DB.Model(&models.IptvUser{}).Create(&dbData)
	return dbData
}

func genName() int {
	name := rand.Intn(999999-1000+1) + 1000 // 生成 1000~999999 之间的随机数
	var count int64
	err := dao.DB.Model(&models.IptvUser{}).Where("name = ?", name).Count(&count).Error
	if err != nil {
		panic(err)
	}

	if count == 0 {
		return name
	} else {
		return genName() // 递归调用
	}
}
