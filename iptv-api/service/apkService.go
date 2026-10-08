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
	// 这正是 SiteIndexData 用来判断"APK 是否存在"的同一个判据（!= "0 MB"）。
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
	// 账号以 json 字符串下发。客户端 `ServerConfig.accountId` 声明为 String，
	// 这里若下发数字会触发 kotlinx 的宽松解析（能读但会留字符串原文的坑），
	// 两边统一成字符串。
	result.ID = user.Name
	result.Status = user.Status
	result.NetType = user.NetType
	result.Location = user.Region

	// showinterval / autoupdate / updateinterval 三个字段仍留在 LoginRes 里
	result.AdText = cfg.Ad.AdText
	result.Decoder = cfg.App.Decoder
	result.AppVer = cfg.Build.Version
	result.BuffTimeOut = cfg.App.BuffTimeout
	result.TipLoading = cfg.Tips.Loading
	result.DataURL = cfg.ServerUrl + "/apk/channels"
	result.AppURL = cfg.ServerUrl + "/app/" + cfg.Build.Name + ".apk"
	result.ShowTime = cfg.Ad.ShowTime
	result.TipUserNoReg = "当前账号 " + user.Name + " " + cfg.Tips.UserNoReg
	result.TipUserExpired = "当前账号 " + user.Name + " " + cfg.Tips.UserExpired
	result.TipUserForbidden = "当前账号 " + user.Name + " " + cfg.Tips.UserForbidden
	result.AdInfo = "作者博客: www.qingh.xyz"
	// RandKey 参与频道数据解密。存量账号是随机数字串（如 "210079"），
	// 改类型后拼接结果与旧的 strconv.FormatInt(name, 10) **逐字相同**，
	// 所以存量设备换到新二进制后仍能解开自己那份数据 —— 这条不能动。
	result.RandKey = until.Md5(time.Now().Format("20060102150405") + user.Name)

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
	// 台标是**相对路径**（/logo/xxx.png，见 until.EpgNameGetLogo），
	// 客户端拿不到就直接显示不出来，所以这里补成绝对地址。
	// base 只在能识别出合法 Host 时才有效，取不到时回落到配置的 ServerUrl ——
	// 与 adminBase 同口径，避免反代/裸 IP 场景下台标整批失效。
	logoBase := base
	if logoBase == "" {
		logoBase = strings.TrimRight(cfg.ServerUrl, "/")
	}
	for _, v := range categoryList {
		var tmpData []dto.ChannelData
		var i int64 = 1
		var dataMap = make(map[string][]string)
		var logoMap = make(map[string]string)
		var tmpMap = make(map[string]int64)

		for _, channel := range until.CaGetChannels(v, false, base) {
			// 同一频道名的多条线路共用一份台标，取第一条非空的。
			// 之所以按名字而不是按线路存：dataMap 本来就是按名字聚合的，
			// 台标跟着名字走才不会在多线路频道上丢图。
			if cur := logoMap[channel.Name]; cur == "" && channel.Logo != "" {
				logoMap[channel.Name] = logoBase + channel.Logo
			}
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
				Logo:   logoMap[k],
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

	// 点播管理已下线：不再查 iptv_movie，恒下发空数组。
	// 字段本身必须保留，客户端按 movieengine.model 取值（见 dto.MovieEngine 注释）。
	result.MovieEngine.Model = []struct{}{}

	if cfg.App.NeedAuthor == 0 {
		result = getMealName(user, result)
		log.Printf("用户: %s 登录成功,IP: %s 设备ID: %s 套餐: %s \n", result.ID, result.IP, user.DeviceID, result.MealName)
	} else if cfg.App.NeedAuthor == 1 && user.Status != -1 {
		result = getMealName(user, result)
		log.Printf("用户: %s 登录成功,IP: %s 设备ID: %s 套餐: %s\n", result.ID, result.IP, user.DeviceID, result.MealName)
	} else {
		log.Printf("用户: %s 登录成功,IP: %s 设备ID: %s 未授权 \n", result.ID, result.IP, user.DeviceID)
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
		Name:     genName(user),
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

// genName 生成设备账号。
//
// 客户端上报 `androidid`（真设备 ID）后，账号就用它 —— 用户在后台一眼能认出
// 「这个账号就是这台机器」，不再是一串无从对应的随机数。
//
// 两点必须注意：
//  1. 取不到设备 ID（客户端老版本、或 ANDROID_ID 取不到）时退回旧的随机数，
//     登录不因此失败。
//  2. 随机数分支的递归在极端碰撞下会栈溢出（1000~999999 空间、约 90 万条
//     数据时生日碰撞已不罕见）。改为循环 + 上限，撞满就线性探测。
func genName(user dto.ApkUser) string {
	if id := strings.TrimSpace(user.DeviceID); id != "" {
		return id
	}
	return randomName()
}

func randomName() string {
	// 线性探测：先随机若干次，仍撞名就顺序往后找，不再无限递归。
	for i := 0; i < 32; i++ {
		name := int64(rand.Intn(999999-1000+1) + 1000) // 1000~999999
		var count int64
		if err := dao.DB.Model(&models.IptvUser{}).Where("name = ?", strconv.FormatInt(name, 10)).Count(&count).Error; err != nil {
			// 查库失败时不能当"没撞名"——那会写出重复账号。这里保守地当成撞名，继续探测。
			log.Println("genName 查询账号占用失败: " + err.Error())
			continue
		}
		if count == 0 {
			return strconv.FormatInt(name, 10)
		}
	}
	// 32 次随机都没空位，说明号码空间快满了，顺序找一个。
	for name := int64(1000); name < 999999; name++ {
		var count int64
		if err := dao.DB.Model(&models.IptvUser{}).Where("name = ?", strconv.FormatInt(name, 10)).Count(&count).Error; err != nil {
			log.Println("genName 顺序探测失败: " + err.Error())
			return strconv.FormatInt(name, 10)
		}
		if count == 0 {
			return strconv.FormatInt(name, 10)
		}
	}
	return strconv.FormatInt(int64(rand.Intn(999999-1000+1)+1000), 10)
}
