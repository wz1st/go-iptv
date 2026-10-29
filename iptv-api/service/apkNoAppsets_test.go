package service

import (
	"encoding/json"
	"iptv-api/dto"
	"reflect"
	"strings"
	"testing"
)

// appsets 已从 getver 响应里删除：客户端骆驼壳侧同步删掉了 getInt("appsets")，
// 留着字段只会让两端口径漂移（清和壳是 root["appsets"]?.intOrNull ?: 0，
// 骆驼壳曾是 getInt —— 缺 key 会抛 JSONException）。
func TestGetverRes_NoAppsetsKey(t *testing.T) {
	raw, err := json.Marshal(dto.GetverRes{})
	if err != nil {
		t.Fatal(err)
	}
	if strings.Contains(string(raw), "appsets") {
		t.Fatalf("getver 响应仍含 appsets：%s", raw)
	}
	// 反向断言：逐个 json tag 扫一遍，防止换名后仍残留同类字段
	ty := reflect.TypeOf(dto.GetverRes{})
	for i := 0; i < ty.NumField(); i++ {
		tag := ty.Field(i).Tag.Get("json")
		if strings.Contains(tag, "appsets") {
			t.Fatalf("字段 %s 的 json tag 仍含 appsets：%s", ty.Field(i).Name, tag)
		}
	}
}

// 删除响应字段不能连带删掉后台配置项：cfg.App.Update.Set 仍由管理端写接口
// （adminClientService.SetClientAppInfo / adminClientLuotuoService.SetLuotuoAppInfo）
// 读写，跨仓守卫 TestConfigFieldsAlignedAcrossRepos 也要求引擎 dto 保留同名字段。
// 这里对**真实类型**做往返断言：删的是「下发字段」，配置项必须完好。
func TestAppUpdateSet_ConfigItemIntact(t *testing.T) {
	ty := reflect.TypeOf(dto.AppUpdate{})
	f, ok := ty.FieldByName("Set")
	if !ok {
		t.Fatal("dto.AppUpdate.Set 被误删：管理端写接口与 config.yml 的 update.set 都依赖它")
	}
	if got := f.Tag.Get("mapstructure"); got != "set" {
		t.Fatalf("AppUpdate.Set 的 mapstructure tag = %q，期望 \"set\"（config.yml 键名不能变）", got)
	}

	// 写：管理端收到 upSet=true 后置 1
	raw, err := json.Marshal(dto.AppUpdate{Set: 1})
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(raw), `"set":1`) {
		t.Fatalf("序列化后应含 \"set\":1，实际 %s", raw)
	}
	// 读：引擎重启后从 config.yml 载回
	var back dto.AppUpdate
	if err := json.Unmarshal([]byte(`{"set":1}`), &back); err != nil {
		t.Fatal(err)
	}
	if back.Set != 1 {
		t.Fatalf("反序列化后 Set = %d，期望 1", back.Set)
	}
}
