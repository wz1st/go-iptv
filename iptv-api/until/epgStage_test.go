package until

import (
	"os"
	"path/filepath"
	"testing"
)

// 用临时目录当暂存根，避免污染真实持久卷。
func useTempStage(t *testing.T) {
	t.Helper()
	old := EpgStageDir
	EpgStageDir = t.TempDir()
	t.Cleanup(func() { EpgStageDir = old })
}

func TestEpgStageRoundTrip(t *testing.T) {
	useTempStage(t)

	if err := StageEpgSource("源A", "http://x/e.xml", []byte("<tv/>")); err != nil {
		t.Fatalf("暂存失败: %v", err)
	}
	got, ok := LoadEpgSourceStage("源A", "http://x/e.xml")
	if !ok {
		t.Fatal("暂存物应能读回")
	}
	if string(got) != "<tv/>" {
		t.Fatalf("内容不符: %q", got)
	}
}

func TestEpgStageRejectsUrlChange(t *testing.T) {
	useTempStage(t)

	// 用户改了源的 URL ⇒ 旧暂存物不该再被用（内容对不上新地址）。
	if err := StageEpgSource("源A", "http://old/e.xml", []byte("<tv/>")); err != nil {
		t.Fatalf("暂存失败: %v", err)
	}
	if _, ok := LoadEpgSourceStage("源A", "http://new/e.xml"); ok {
		t.Fatal("URL 变了仍命中暂存 ⇒ 会用旧内容")
	}
	// 空 url = 不校验。
	if _, ok := LoadEpgSourceStage("源A", ""); !ok {
		t.Fatal("空 URL 应允许命中")
	}
}

func TestEpgStageOverwriteOnUpdate(t *testing.T) {
	useTempStage(t)

	StageEpgSource("源A", "http://x/e.xml", []byte("<tv>old</tv>"))
	// 下次更新 ⇒ 覆盖暂存物。
	StageEpgSource("源A", "http://x/e.xml", []byte("<tv>new</tv>"))

	got, ok := LoadEpgSourceStage("源A", "http://x/e.xml")
	if !ok {
		t.Fatal("暂存物应存在")
	}
	if string(got) != "<tv>new</tv>" {
		t.Fatalf("暂存物应被覆盖为新内容，实际: %q", got)
	}
}

func TestEpgStageRemove(t *testing.T) {
	useTempStage(t)

	StageEpgSource("源A", "http://x/e.xml", []byte("<tv/>"))
	RemoveEpgSourceStage("源A")
	if _, ok := LoadEpgSourceStage("源A", "http://x/e.xml"); ok {
		t.Fatal("移除后不应再命中")
	}
	// meta 也必须一起清掉，否则空文件残留。
	if _, err := os.Stat(stagePath("xml", "source", "源A") + ".meta"); !os.IsNotExist(err) {
		t.Fatalf("meta 残留: %v", err)
	}
}

func TestEpgStageNameSanitized(t *testing.T) {
	useTempStage(t)

	// 源名可能带斜杠/中文 ⇒ 文件名必须是 md5，不能把名字直接拼进路径。
	StageEpgSource("a/../../evil", "http://x/e.xml", []byte("<tv/>"))

	path := stagePath("xml", "source", "a/../../evil")
	if filepath.Dir(path) != filepath.Join(EpgStageDir, "xml", "source") {
		t.Fatalf("路径越界: %s", path)
	}
	if _, ok := LoadEpgSourceStage("a/../../evil", "http://x/e.xml"); !ok {
		t.Fatal("暂存物应能读回")
	}
}

func TestEpgStageCntvDayScoped(t *testing.T) {
	useTempStage(t)

	StageEpgCntv("cctv1", "svc", []byte(`{"a":1}`))
	if _, ok := LoadEpgCntvStage("cctv1", "svc"); !ok {
		t.Fatal("当天暂存应能读回")
	}
	// 不同 tag ⇒ 不同形状，不能互相命中。
	if _, ok := LoadEpgCntvStage("cctv1", "until"); ok {
		t.Fatal("不同 tag 不应命中")
	}
}

func TestEpgStageEmptyPayloadRejected(t *testing.T) {
	useTempStage(t)

	if err := StageEpgSource("", "http://x", []byte("<tv/>")); err == nil {
		t.Fatal("空源名应报错")
	}
	if err := StageEpgSource("源A", "http://x", nil); err == nil {
		t.Fatal("空内容应报错")
	}
}
