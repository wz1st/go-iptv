package api

import (
	"iptv-api/dto"
	"iptv-api/service"

	"github.com/gin-gonic/gin"
)

// 频道管理（/api/channels）—— 一个动作一条路由。

// ---- 频道列表 ----

// ChannelsListUpdate 拉取单个频道列表的最新数据。
// POST /api/channels/listUpdate  {"id":3}
func ChannelsListUpdate(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.UpdateList(req))
}

// ChannelsListUpdateAll 拉取全部频道列表的最新数据。
// POST /api/channels/listUpdateAll  （无请求体）
func ChannelsListUpdateAll(c *gin.Context) {
	reply(c, service.UpdateListAll())
}

// ChannelsListSave 新增 / 编辑频道列表（id 为 0 表示新增）。
func ChannelsListSave(c *gin.Context) {
	var req dto.ChannelsListReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.AddList(req))
}

// ChannelsListDelete 删除频道列表。
// POST /api/channels/listDelete  {"id":3}
func ChannelsListDelete(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DelList(req))
}

// ChannelsListFlag 只改频道源列表里的两个开关（更新间隔 / 自动更新）。
func ChannelsListFlag(c *gin.Context) {
	var req dto.ChannelsListFlagReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SaveListFlag(req))
}

// ---- 分类 ----

// ChannelsCaChannels 取某个分类下的频道（用于分类编辑弹窗）。
func ChannelsCaChannels(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.CaGetChannels(req, adminBase(c)))
}

// ChannelsCaDelete 删除分类。
// POST /api/channels/caDelete  {"id":5}
func ChannelsCaDelete(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DelCa(req))
}

// ChannelsCaStatus 上线 / 下线分类。
// POST /api/channels/caStatus  {"id":5}
func ChannelsCaStatus(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.CategoryChangeStatus(req))
}

// ChannelsCaSave 新增 / 编辑分类（id 为 0 表示新增）。
func ChannelsCaSave(c *gin.Context) {
	var req dto.ChannelsCategoryReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SaveCategory(req))
}

// ChannelsCaListStatus 上线 / 下线分类（其下 EPG 同步跟随）。
// POST /api/channels/caListStatus  {"id":3}
func ChannelsCaListStatus(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.CategoryListChangeStatus(req))
}

// ---- 单个频道 ----

// ChannelsChannelStatus 启用 / 停用单个频道（按**目标状态**，不是取反）。
// POST /api/channels/channelStatus  {"id":9,"status":false}
func ChannelsChannelStatus(c *gin.Context) {
	var req dto.ChannelsStatusReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ChannelsChangeStatus(req))
}

// ChannelsChDelete 删除单个频道（「频道分组 → 管理」弹窗的操作列）。
func ChannelsChDelete(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.DeleteChannel(req))
}

// ChannelsCaSort 保存分类的拖拽排序（整表顺序提交，第 1 个元素排最前）。
func ChannelsCaSort(c *gin.Context) {
	var req dto.ChannelsCaSortReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SortCategory(req))
}

// ChannelsChSort 保存某个分组内频道的拖拽排序（整表顺序提交，第 1 个元素排最前）。
func ChannelsChSort(c *gin.Context) {
	var req dto.ChannelsChSortReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SortChannels(req))
}

// ChannelsChImport 整表保存某个分组内的频道（「频道分组 → 编辑频道」弹窗的「保存」）。
func ChannelsChImport(c *gin.Context) {
	var req dto.ChannelsImportReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.ImportChannels(req))
}

// ChannelsCaFlag 只改分组列表里的两个开关（中转访问 / 频道重命名）。
func ChannelsCaFlag(c *gin.Context) {
	var req dto.ChannelsCaFlagReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SaveCategoryFlag(req))
}

// ChannelsSaveOne 保存单个频道的名称 / 地址 / 绑定 EPG（id 为 0 表示新增）。
// POST /api/channels/saveOne  {"id":0,"name":"CCTV1","url":"http://…","epgId":1}
func ChannelsSaveOne(c *gin.Context) {
	var req dto.ChannelsOneReq
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.SaveChannelsOne(req))
}

// ChannelsTestResolution 测试单个频道的分辨率。
// POST /api/channels/testResolution  {"id":9}
func ChannelsTestResolution(c *gin.Context) {
	var req dto.ReqID
	if !bindJSON(c, &req) {
		return
	}
	reply(c, service.TestResolutionOne(req))
}

// ChannelsUploadPayList 上传付费频道列表（multipart/form-data）。
func ChannelsUploadPayList(c *gin.Context) {
	reply(c, service.UploadPayList(c))
}
