package until

import (
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"iptv-api/dao"
	"log"
	"net/http"
	"os"
	"os/exec"
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

	if latest == oldVer {
		return true, nil
	}
	vLen := 3
	latest = strings.TrimPrefix(latest, "v")
	oldVer = strings.TrimPrefix(oldVer, "v")

	np := strings.Split(latest, ".")
	op := strings.Split(oldVer, ".")
	for len(np) < vLen {
		np = append(np, "0")
	}
	for len(op) < vLen {
		op = append(op, "0")
	}

	for i := 0; i < vLen; i++ {
		var a, b int
		fmt.Sscanf(np[i], "%d", &a)
		fmt.Sscanf(op[i], "%d", &b)
		if a > b {
			return false, errors.New("该功能需要引擎最低版本为: " + latest + " ,当前版本为: " + oldVer + " ,请升级引擎")
		}
		if a == b {
			continue
		}
		if a < b {
			return true, nil
		}
	}
	return false, errors.New("版本号读取失败")
}
