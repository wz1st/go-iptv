# 站点本体：一段**共用**的 server 内容，被 :80 的 server 与可选的 :443 一起 include。
#
# 拆出来的唯一理由：开启 HTTPS 后两个 server 必须跑**完全一样**的 location 规则，
# 各写一份迟早只改一边（典型翻车：HTTPS 站点开了，`/p/` 中转、`/app/` 下载
# 或者本分支独有的 `/dl/` 下载页 404）。
#
# 本文件位于 /etc/nginx/conf.d/，由 Dockerfile 从 nginx/site.inc 拷进来，**不是**给
# /etc/nginx/conf.d/*.conf 那种通配包含用的（nginx.conf 里是显式 include 本文件）。
# 所以这里的 server 级指令只写"与协议无关"的部分：listen 与 ssl_* 留在外面。
#
# 内容是从本分支原来的 nginx.conf 里**原样搬出来**的（含 /config/dl/site 那套下载页
# 路由），只去掉了 server 头与两条 listen —— 不是从 main 抄的。
server_name  _;

# 重定向一律发**相对** Location（而不是 nginx 默认的绝对地址）
absolute_redirect off;

# 0. 下载页：优先取引擎渲染的自定义页，取不到回落到镜像自带的默认页。
#    产物目录 /config/dl/site 由引擎按「定制授权 + 开关」增删，
#    所以这里不看授权状态，只看文件在不在 —— 开关一改就热切换，不必重载 nginx。
#    root 必须精确指向 site 那一层：root 是**拼接**语义（root+uri），
#    写成 /config/dl 会去找 /config/dl/index.html，而产物在 /config/dl/site/ 下。
location = / {
    root /config/dl/site;
    try_files /index.html @dl_desktop;
    add_header Cache-Control "no-cache" always;
}

location = /mobile {
    root /config/dl/site;
    try_files /index.html @spa;
    add_header Cache-Control "no-cache" always;
}

# 自定义下载页的 css / js / 图片（引擎把页面里的相对引用改写成 /dl/ 前缀）。
location ^~ /dl/ {
    alias /config/dl/site/;
    access_log off;
    add_header Cache-Control "no-cache" always;
}
# 渲染记账文件不外泄（/dl/ 是前缀匹配，精确匹配优先级更高）
location = /dl/.stamp { return 404; }

# 默认下载页（桌面）：移动端 UA 送 SPA 的 /mobile 路由，其余交前端「/」。
location @dl_desktop {
    if ($http_user_agent ~* "(android|iphone|ipod|ipad|mobile|windows phone|harmonyos)") {
        return 302 /mobile;
    }
    root /app/web;
    try_files /index.html =404;
    add_header Cache-Control "no-cache" always;
}

# 1. 后端接口（规范前缀）
location ^~ /api/ {
    proxy_pass http://iptv_api;
    include /etc/nginx/conf.d/proxy_params.inc;
}

# 2. 客户端 / 播放器旧接口（兼容前缀，不可删）
location ~ ^/(apk|mytv|getRss|ku9|epg|r|k)/ {
    proxy_pass http://iptv_api;
    include /etc/nginx/conf.d/proxy_params.inc;
}

# 3. 中转（/p/**）
location ^~ /p/ {
    proxy_pass http://iptv_proxy;

    proxy_http_version 1.1;
    proxy_set_header   Connection "";

    proxy_buffering          off;
    proxy_request_buffering  off;
    proxy_connect_timeout    10s;
    proxy_read_timeout       3600s;
    proxy_send_timeout       3600s;

    gzip        off;
    access_log  off;
    add_header  Cache-Control "no-cache" always;
}

# 4. 后台（/admin/**）—— 现在是纯前端页面，这里**不再**单独处理

# 5. 同一 URL 上「页面 + 接口」共存的特例
location = /version {
    proxy_pass http://iptv_api;
    include /etc/nginx/conf.d/proxy_params.inc;
}

location = /ChangeLog.md {
    proxy_pass http://iptv_api;
    include /etc/nginx/conf.d/proxy_params.inc;
}

# 6. 静态资源目录：nginx 直接从磁盘取，不再绕后端
location ^~ /app/ {
    alias /config/app/;
    access_log off;
    expires 1h;
}
location ^~ /images/ {
    alias /config/images/bj/;
    access_log off;
    expires 7d;
}
location ^~ /icon/ {
    alias /config/images/icon/;
    access_log off;
    expires 7d;
}
# 骆驼壳（主槽位）的同一套素材，整棵子树独立放在 /config/images/lt 下。
# **不能**写成 /images/lt/ —— 那样它会落进上面 /images/ 的 alias 里，
# 实际去取 /config/images/bj/lt/xxx.png，表现为"后台上传成功、客户端拿不到图"。
location ^~ /lt/images/ {
    alias /config/images/lt/bj/;
    access_log off;
    expires 7d;
}
location ^~ /lt/icon/ {
    alias /config/images/lt/icon/;
    access_log off;
    expires 7d;
}
location ^~ /logo/ {
    alias /config/logo/;
    access_log off;
    expires 7d;
}
# 下载页/登录页的品牌图与 README 里的收款码：源码在
location ^~ /static/ {
    alias /app/web/static/;
    access_log off;
    expires 7d;
}

# 7. 前端产物
location /assets/ {
    expires 30d;
    add_header Cache-Control "public, immutable";
    access_log off;
}

# 兜底：先找真实文件 → 再找目录 → 都没有才交给 SPA 回落。
location / {
    try_files $uri $uri/ @spa;
    add_header Cache-Control "no-cache" always;
}

# 8. 命名回落：后端 404 时把 index.html 交出去
location @spa {
    if ($http_accept !~* "text/html") {
        return 404;
    }
    root /app/web;
    try_files /index.html =404;
    add_header Cache-Control "no-cache" always;
}
