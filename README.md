## 清和iptv
>源自骆驼IPTV并大改，由原来的PHP+MySql改为Go+Sqlite     

- 添加缺失功能
- 精简删除非必要页面功能
- 添加自动反编译APK，添加修改APK图标和背景
- 添加EPG订阅
- 添加套餐对接酷9等空壳平台
- 修改系统存在的安全漏洞
- 添加MYTV的对接
- 添加RTSP组播转单播
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
```
docker volume create iptv
docker pull v1st233/iptv:latest
docker run -d --name iptv_server -p <port>:80 -v iptv:/config v1st233/iptv:latest
```
或
```
git clone https://github.com/wz1st/go-iptv.git
cd iptv
docker build -f Dockerfile -t image_name:latest .
docker volume create iptv
docker run -d --name iptv_server -p port:80 -v iptv:/config image_name:latest
``` 
## 使用
容器跑起来后访问`http://<ip>:<port>`即可，根据提示安装系统，然后登录添加源->修改套餐->下载安装APK->授权用户即可使用
## 小声哔哔
>本程序仅供学习交流使用，请勿用于商业用途，否则后果自负。     
>本程序不保证长期稳定运行，请自行备份。     
>源自己找，有问题自己解决。     
 
