package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// EPG 列表 + EPG 来源 —— 一个动作一条路由。

// ---- EPG 列表（/api/epgs）----

// EpgsBindable 取「绑定频道」弹窗里可选的频道（已绑定的自动打勾）。
// POST /api/epgs/bindable  {"id":12}
func EpgsBindable(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.GetChName(req))
}

// EpgsSave 新增 / 编辑 EPG（id 为 0 表示新增）。
func EpgsSave(c *gin.Context) {
	var req dto.EpgSaveReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SaveEpg(req))
}

// EpgsBind 保存 EPG 与频道的绑定关系。
// POST /api/epgs/bind  {"id":12,"channels":"CCTV1,CCTV2"}
func EpgsBind(c *gin.Context) {
	var req dto.EpgBindReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.BdingEpg(req))
}

// EpgsStatus 上线 / 下线一个 EPG。
// POST /api/epgs/status  {"id":12}
func EpgsStatus(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ChangeStatus(req))
}

// EpgsDelete 删除 EPG（内置的 CNTV EPG 不允许删）。
// POST /api/epgs/delete  {"id":12}
func EpgsDelete(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DeleteEpg(req))
}

// EpgsBindChannel 按规则批量绑定频道。
// POST /api/epgs/bindChannel  （无请求体）
func EpgsBindChannel(c *gin.Context) {
	reply(c, service.BindChannel())
}

// EpgsClearBind 清空全部 EPG 的频道绑定。
// POST /api/epgs/clearBind  （无请求体）
func EpgsClearBind(c *gin.Context) {
	reply(c, service.ClearBind())
}

// EpgsClearCache 清空 EPG 相关缓存。
// POST /api/epgs/clearCache  （无请求体）
func EpgsClearCache(c *gin.Context) {
	reply(c, service.ClearCache())
}

// EpgsDeleteLogo 删除某个 EPG 的台标图片。
// POST /api/epgs/deleteLogo  {"id":12}
func EpgsDeleteLogo(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DeleteLogo(req))
}

// EpgsDeleteUnbound 删除没有绑定任何来源的 EPG。
// POST /api/epgs/deleteUnbound  （无请求体）
func EpgsDeleteUnbound(c *gin.Context) {
	reply(c, service.DelNotFrom())
}

// EpgsUploadLogo 上传台标（multipart/form-data，字段名 uploadlogo + epgname）。
func EpgsUploadLogo(c *gin.Context) {
	reply(c, service.UploadLogo(c))
}

// ---- EPG 来源（/api/epgFrom）----

// EpgFromStatus 上线 / 下线一个来源（其下 EPG 同步跟随）。
// POST /api/epgFrom/status  {"id":3}
func EpgFromStatus(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ChangeListStatus(req))
}

// EpgFromUpdate 拉取单个来源的最新频道数据。
// POST /api/epgFrom/update  {"id":3}
func EpgFromUpdate(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.UpdateEpgList(req))
}

// EpgFromDelete 删除来源，并把引用它的 EPG 解绑。
// POST /api/epgFrom/delete  {"id":3}
func EpgFromDelete(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DelEpgList(req))
}

// EpgFromSave 新增 / 编辑来源（id 为 0 表示新增），并立即拉一次数据。
// POST /api/epgFrom/save  {"id":0,"name":"我的源","url":"http://…/epg.txt","ua":"okhttp"}
func EpgFromSave(c *gin.Context) {
	var req dto.EpgFromSaveReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.EpgImport(req))
}

// EpgFromUpdateAll 拉取全部来源的最新数据。
// POST /api/epgFrom/updateAll  （无请求体）
func EpgFromUpdateAll(c *gin.Context) {
	reply(c, service.UpdateEpgListAll())
}
