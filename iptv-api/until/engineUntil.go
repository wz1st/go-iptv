package until

import (
	"encoding/json"
	"errors"
	"io"
	"iptv-api/dao"
	"log"
	"net/http"
	"os"
	"os/exec"
	"strconv"
	"strings"
)

func IsRunning() bool {
	cmd := exec.Command("bash", "-c", "ps -ef | grep '/engine' | grep -v grep")
	output, err := cmd.CombinedOutput()
	if err != nil {
		return checkRun()
	}
	return strings.Contains(string(output), "engine")
}

func checkRun() bool {
	defaultUA := "Go-http-client/1.1"
	useUA := defaultUA

	req, err := http.NewRequest("GET", "http://127.0.0.1:81/", nil)
	if err != nil {
		return false
	}

	req.Header.Set("User-Agent", useUA)

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		return false
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return false
	}

	return strings.Contains(string(body), "ok")
}

// EngineVersion 取引擎版本号，**问二进制自己**（`/app/engine -version`）。
func EngineVersion() string {
	out, err := exec.Command(engineBinPath(), "-version").Output()
	if err != nil {
		return ""
	}
	return strings.TrimSpace(string(out))
}

// engineBinPath 是引擎二进制的运行目录路径（镜像里是 /app/engine）。
func engineBinPath() string {
	if v := os.Getenv("IPTV_ENGINE_BIN"); v != "" {
		return v
	}
	return "/app/engine"
}

// 这里原本有一个 InitProxy()：它把 cfg.Proxy 的「协议 / 地址 / 端口」自动

func CheckEngineVer(latest string) (bool, error) {
	var oldVer string
	verJson, err := dao.WS.SendWS(dao.Request{Action: "getVersion"})
	if err != nil {
		oldVer = EngineVersion()
		if oldVer == "" {
			return false, errors.New("引擎版本号获取失败，请检查引擎状态")
		}
	} else {
		if err := json.Unmarshal(verJson.Data, &oldVer); err != nil {
			log.Println("引擎版本信息解析错误:", err)
			return false, errors.New("引擎版本号获取失败")
		}
	}

	need, err := parseVerTriple(latest)
	if err != nil {
		return false, errors.New("版本门配置错误: " + latest + " (" + err.Error() + ")")
	}
	have, err := parseVerTriple(oldVer)
	if err != nil {
		return false, errors.New("引擎版本号无法识别: " + oldVer + " (" + err.Error() + ")，请检查引擎状态")
	}

	for i := 0; i < len(need); i++ {
		if need[i] > have[i] {
			return false, errors.New("该功能需要引擎最低版本为: " + latest + " ,当前版本为: " + oldVer + " ,请升级引擎")
		}
		if need[i] == have[i] {
			continue
		}
		//引擎更高即放行，后面的段不用再看。
		return true, nil
	}
	return true, nil
}

// parseVerTriple 把版本串归一成三段整数。
//
// 它替代了原先的 strings.Split + fmt.Sscanf：Sscanf 的错误被丢弃，
// 遇到 "3.0"（只有两段）或 "3.0.0.beta"（第四段非数字）时 a 会静默变成 0，
// 三段全部相等就掉到函数末尾，出一句"版本号读取失败"——
// 既指错方向（实际是格式问题不是版本低），也看不出是哪个串坏了。
func parseVerTriple(v string) ([3]int, error) {
	var out [3]int
	v = strings.TrimSpace(v)
	v = strings.TrimPrefix(v, "v")
	v = strings.TrimPrefix(v, "V")
	// "-custom.2" 只用来区分分支（引擎定制版是 v3.0.0-custom.N），比较的是主版本号。
	if i := strings.IndexAny(v, "-+"); i >= 0 {
		v = v[:i]
	}
	if v == "" {
		return out, errors.New("版本号为空")
	}

	parts := strings.Split(v, ".")
	if len(parts) > len(out) {
		return out, errors.New("版本号有 " + strconv.Itoa(len(parts)) + " 段，最多 3 段")
	}
	for i, p := range parts {
		p = strings.TrimSpace(p)
		if p == "" {
			return out, errors.New("第 " + strconv.Itoa(i+1) + " 段为空")
		}
		n, err := strconv.Atoi(p)
		if err != nil || n < 0 {
			return out, errors.New("第 " + strconv.Itoa(i+1) + " 段 " + strconv.Quote(p) + " 不是非负整数")
		}
		out[i] = n
	}
	return out, nil
}
