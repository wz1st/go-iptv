## 清和iptv
>源自骆驼IPTV并大改，由原来的PHP+MySql改为Go+Sqlite     

- 添加缺失功能
- 精简删除非必要页面功能
- 添加自动反编译APK，添加修改APK图标和背景
- 添加EPG订阅
- 添加套餐对接酷9等空壳平台
- 修改系统存在的安全漏洞
- 添加MYTV的对接
- 添加RTSP单播转组播
- 添加epg模糊识别
- 添加UA支持
- 添加一些自己的想法

## 注意
当前版本与之前PHP版本并不兼容，若要使用PHP版本，请使用`docker pull v1st233/iptv:20250905`

## 反馈bug
- Github: [Github issues](https://github.com/wz1st/go-iptv/issues)

- 邮箱： v1st233@gmail.com

- 博客： [清和's blog](https://www.qingh.xyz/go-iptv-docker/)

- QQ群：952354546     入群答案在docker容器内     &nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="https://qm.qq.com/cgi-bin/qm/qr?k=pMPxYtnMvSlAL1irmcOzdSZSKhETKebC&jump_from=webapi&authKey=JluAYPajYgxbyuz+T0caZmrtfJbPQUxoZ6tORWtu1teN3PP/rEtu5lFZu+AUG1Bi"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="清和iptv" title="清和iptv"></a>



## [更新记录](./ChangeLog.md)

## 安装

### 方式一：docker compose（推荐）
本仓自带的 `docker-compose.yml` 直接用已发布镜像，不本机构建：
```
docker compose up -d
```
默认容器名 `iptv-web`，映射 `8090:80`，数据落在 `./data`；需要 privileged（「中转访问」要监听端口）。

### 方式二：docker 命令
```
docker volume create iptv
docker pull v1st233/iptv:latest
docker run -d --name iptv_server -p <port>:80 -v iptv:/config v1st233/iptv:latest
```

### 方式三：自己构建镜像
本仓有两个 Dockerfile，**都不编译 Go 二进制和前端**，区别只有「产物从哪来」：

| Dockerfile | 产物来源 | 适用场景 |
|---|---|---|
| `Dockerfile` | 从 GitHub Release 下载目标架构的最新版产物 | 普通用户：`git clone` 后直接构建，不需要 Go / Node 工具链，也不需要本仓里有 `iptv_all/` 这些产物 |
| `Dockerfile.web` | 用构建上下文里已有的产物组装（`iptv_all/` `engine_all/` `start_all/` `webdist/`） | CI 与二次开发：产物先由 GitHub Actions 或本机编译好，再打进镜像 |

```
# 在线下载版（自动探测各仓最新版本）
git clone https://github.com/wz1st/go-iptv.git
cd go-iptv
docker build -f Dockerfile -t iptv:latest .
docker run -d --name iptv_server -p <port>:80 -v iptv:/config iptv:latest

# 本地产物组装版（需先把产物放进 iptv_all/ engine_all/ start_all/ webdist/）
docker build -f Dockerfile.web -t iptv:latest .
```

`Dockerfile`（在线下载版）的可选构建参数：

| 参数 | 默认 | 说明 |
|---|---|---|
| `API_VERSION` | `latest` | 管理系统版本，`latest` = 自动探测 `wz1st/go-iptv` 最新的 `vX.Y.Z` |
| `ENGINE_VERSION` | `latest` | 引擎版本，`latest` = 自动探测 `wz1st/go-iptv` 最新的 `engine-vX.Y.Z`（引擎版本号独立成序列） |
| `FRONT_VERSION` | `same` | 前端产物版本，`same` = 跟随 `API_VERSION` |
| `START_VERSION` | `same` | 启动器版本，`same` = 跟随 `API_VERSION` |
| `APK_MIRROR` | 清华源 | Alpine 包源 |

需要提高 GitHub API 频次限额时（公开仓通常不需要），令牌走 secret 挂载而不是构建参数，避免凭据进入构建历史：

```
GITHUB_TOKEN=ghp_xxx docker build -f Dockerfile --secret id=gh_token,env=GITHUB_TOKEN -t iptv:latest .
```

> 在线下载版**不读构建上下文里的产物**（就算本机有 `iptv_all/` 这些目录也不会用），产物只来自 Release；
> 前端与 api 的版本一致性在下载阶段就已校验，所以不用传 `APP_VERSION`。

两个 Dockerfile 都要求 BuildKit（`COPY --chmod`、heredoc、secret 都是 BuildKit 特性；Docker 23+ 默认开启）。

任一环节（解析版本 / 下载 / sha256 校验 / 架构校验 / 前端版本标记）不通过都会**立即中止构建**：只认最新版，不回落旧版本。

产物来源与 `.github/workflows/docker-image.yml` 的发布目标逐字对应：

| 产物 | 仓库 | 标签 | 谁发布 |
|---|---|---|---|
| `iptv_amd64` `iptv_arm` `iptv_arm64` + `SHA256SUMS.txt` | `wz1st/go-iptv` | `vX.Y.Z` | 本仓 CI |
| `engine_amd64` `engine_arm` `engine_arm64` + `SHA256SUMSEngine.txt` | `wz1st/go-iptv` | `engine-vX.Y.Z` | **iptv-engine 仓的 CI** |
| `webdist.tar.gz` | `wz1st/iptv-web` | `vX.Y.Z` | 本仓 CI 转发 |
| `start_amd64` `start_arm` `start_arm64` | `wz1st/iptv-start` | `vX.Y.Z` | 本仓 CI 转发 |

> 说明：本仓库是**组装仓**，存放后端源码 `iptv-api/`、配置文件与 nginx 规则；镜像里的结果文件
> （前端 `webdist/`、后端 `iptv_all/`、启动器 `start_all/`、引擎 `engine_all/`）由 GitHub Actions
> 编译产出并在 Release 发布，**不落库**。前端与启动器源码见 `iptv-web` / `iptv-start`，
> 引擎为私有仓库。
>
> **引擎的发布位只由引擎仓维护**：`iptv-engine` 推三段号标签（如 `v3.2.18`）后，其 CI 编译
> amd64/arm/arm64 三份并发布到本仓 `engine-v3.2.18` release（预发布版只编 amd64 且标为
> prerelease，不参与正式挑选）。本仓 CI 不再编译引擎，只按**版本号最高**取一版装进镜像——
> 引擎版本号取自 release 标签，两处都发会让旧版本把新版本顶回去。
>
> **历史引擎 release 一律保留、不清理**：旧版 api 可能正指着旧引擎，删掉就等于打断它的升级
> 路径。因此挑选逻辑统一按版本号数值比较，不看发布时间（补发旧 tag 会让"发布最晚"≠"版本最高"）。
>
> **发布身份由资产构成认定，不只看标签前缀**：同一发布位里 api / 引擎 / mytv 三条序列靠标签
> 前缀分流，但发布位里真出现过"标签像引擎、里面装着 api 产物"（`engine-v3.0.1` 混着
> `iptv_amd64` / `SHA256SUMS.txt` / `Version`）和"一个资产都没有"（`v4.0.1`）的脏数据。只看标签
> 会把这些当候选 —— 轻则"检查更新"报出误导性版本号，重则一路走到下载阶段才报"没有资产"。
> 所以挑选时同时要求：带自己那套校验清单、且**不带对方的**。判据在四处保持一致：iptv-api 的
> `isApiRelease` / `isEngineRelease` / `isMytvBaseRelease`、本仓 CI 的 jq 过滤、
> `Dockerfile` 的 `latest_tag`、以及引擎仓 CI 发布后的资产集合闸门。
>
> mytv 客户端的编译基底 `mytv/MyTV.apk` 随本仓入库，构建时直接打进 `/app/mytv`，不从网络下载。

## 使用
容器跑起来后访问`http://<ip>:<port>`即可，根据提示安装系统，然后登录添加源->修改套餐->下载安装APK->授权用户即可使用

## 打赏
>如果觉得好用，请打赏支持一下

<div class="pay-qr" id="install-show">
  <img src="./static/images/wxpay.jpg" alt="微信" width="300">
  <img src="./static/images/zfbpay.jpg" alt="支付宝" width="300">
</div>



## 小声哔哔
>本程序仅供学习交流使用，请勿用于商业用途，否则后果自负。     
>本程序不保证长期稳定运行，请自行备份。     
>源自己找，有问题自己解决。     
 