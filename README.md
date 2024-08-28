## 矿神群晖iptv的mini版
使用go重构整个系统架构，占用更小，取消了收藏、点播、后台和授权等功能，需要编写配置文件，相对来说更需要一点技术      
### 环境要求
- java 1.8
- go 1.21.x 以上
### 系统目录
```
# tree config
├── apk    # 编译完成的APK
│   └── DSMTV.apk
├── conf.yaml  # 系统配置，需要根据自己的环境修改
├── images    # 背景图片 默认一个初音
└── list   # 提供一个list_url访问服务器，可以把自定义的iptv源放这儿。地址http://<ip>:<port(非容器默认8080)>/list/，
    └── cctv.txt
```
### 配置文件
```
config:
  api_addr: http://192.168.147.139:8080   # APK接口地址，即应用/容器地址
iptv_config:
  background: 1  #  apk背景  0关闭 1开启，多张png随机显示 png放config/images目录下
  mealname: 会员套餐  #随便写
  app_appname: 哲♂学屋 #随便写
  tiploading: 正在加载中... #随便写
  location: 未知   # 位置  没啥用
  appver: 1.0   # 大于2.5.0每次打开apk会触发重装  和autoupdate配合使用
  upsets: 0  # 是否强制更新 0关闭 1开启
  uptext: 更新公告  #随便写
  autoupdate: 0   # 是否自动更新 0关闭 1开启
  updateinterval: 7  # 更新间隔  大概是天
  decoder: 2  #apk默认解码选项  智能解码
  buffTimeOut: 30  #超时时间
  qqinfo: 1111   #联系信息
channels:
  - class: CCTV  # 自己定义
    list_url: http://192.168.147.139:8080/list/cctv.txt  # iptv源  自己定义
  - class: 卫视  # 自己定义
    list_url: http://192.168.147.139:8080/list/1.txt  # iptv源  自己定义
```
### 本地运行
```
go run main.go
```
> 可选参数
```
-port=8080 -conf=/config -build=/build -java=
# port接口端口  默认8080
# conf配置文件保存位置 默认/config
# build编译环境位置 默认/build
# java bin目录 默认为空，即系统默认安装位置
```

访问```http://<ip>:8080```即可下载apk
### docker运行
```docker run -d --name iptv_server -p <port>:8080 -v /<path>:/config v1st233/iptv:mini```      
启动后生成配置文件conf.yml，需要修改配置文件后重启     访问```http://<ip>:<port>```即可下载apk



## list_url iptv源格式样例：
```
CCTV1,https://live.v1.mk/api/bestv.php?id=cctv1hd8m/8000000
CCTV2,https://live.v1.mk/api/bestv.php?id=cctv2hd8m/8000000
CCTV3,https://live.v1.mk/api/bestv.php?id=cctv38m/8000000
CCTV4,https://live.v1.mk/api/bestv.php?id=cctv4hd8m/8000000
CCTV5,https://live.v1.mk/api/bestv.php?id=cctv58m/8000000
CCTV5+,https://live.v1.mk/api/bestv.php?id=cctv5phd8m/8000000
CCTV6,https://live.v1.mk/api/bestv.php?id=cctv6hd8m/8000000
CCTV7,https://live.v1.mk/api/bestv.php?id=cctv7hd8m/8000000
CCTV8,https://live.v1.mk/api/bestv.php?id=cctv8hd8m/8000000
CCTV9,https://live.v1.mk/api/bestv.php?id=cctv9hd8m/8000000
CCTV10,https://live.v1.mk/api/bestv.php?id=cctv10hd8m/8000000
CCTV11,https://live.v1.mk/api/bestv.php?id=cctv11hd8m/8000000
CCTV12,https://live.v1.mk/api/bestv.php?id=cctv12hd8m/8000000
CCTV13,https://live.v1.mk/api/bestv.php?id=cctv13xwhd8m/8000000
CCTV14,https://live.v1.mk/api/bestv.php?id=cctvsehd8m/8000000
CCTV15,https://live.v1.mk/api/bestv.php?id=cctv15hd8m/8000000
CCTV16,https://live.v1.mk/api/bestv.php?id=cctv16hd8m/8000000
CCTV17,https://live.v1.mk/api/bestv.php?id=cctv17hd8m/8000000
```
