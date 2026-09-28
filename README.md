## 清和iptv

## 仓库说明
> 本仓库是**组装仓**，存放后端源码 `iptv-api/`、配置文件、LOGO、APK 、nginx 规则
#### 相关仓库
- 前端 [iptv-web](https://github.com/wz1st/iptv-web)
- 启动器 [iptv-start](https://github.com/wz1st/iptv-start)
- 引擎 [iptv-engine](https://github.com/wz1st/iptv-engine)

## 简介
源自骆驼IPTV并大改，由原来的PHP+MySql改为Go+Sqlite，重构了前端架构

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
v4.x.x 版本为AI重构版，纯混沌模式  bug未知

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
mkdir iptv && cd iptv
wget https://raw.githubusercontent.com/wz1st/go-iptv/refs/heads/main/docker-compose.yml
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
| `Dockerfile` | 从 GitHub Release 下载目标架构的最新版产物 | 普通用户：`git clone` 后直接构建，不需要 Go / Node 工具链，也不需要本仓里有编译产物 |
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

```
docker build -f Dockerfile --build-arg API_VERSION=latest --build-arg ENGINE_VERSION=latest -t iptv:latest .
```

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
 