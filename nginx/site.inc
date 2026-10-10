# 站点本体：一段**共用**的 server 内容，被 :80 的 server 与可选的 :443 一起 include。
#
# 拆出来的唯一理由：开启 HTTPS 后两个 server 必须跑**完全一样**的 location 规则，
# 各写一份迟早只改一边（典型翻车：HTTPS 站点开了，`/p/` 中转或 `/app/` 下载 404）。
#
# 本文件位于 /etc/nginx/conf.d/，由 Dockerfile 从 nginx/site.inc 拷进来，**不是**给
# /etc/nginx/conf.d/*.conf 那种通配包含用的（nginx.conf 里是显式 include 本文件）。
# 所以这里的 server 级指令只写"与协议无关"的部分：listen 与 ssl_* 留在外面。

server_name  _;

# 重定向一律发**相对** Location（而不是 nginx 默认的绝对地址）
absolute_redirect off;

# 0. 移动端 UA：把「/」送到前端的 /mobile 路由
location = / {
    if ($http_user_agent ~* "(android|iphone|ipod|ipad|mobile|windows phone|harmonyos)") {
        return 302 /mobile;
    }
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
