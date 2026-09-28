# 反代到 iptv-api 的公共参数

proxy_http_version 1.1;

# Host 必须透传原始 Host：后端会用它拼 APK 里烧的服务器地址、
proxy_set_header Host              $iptv_upstream_host;

proxy_set_header X-Real-IP         $remote_addr;

# 后端 router.go 的 RemoteIPHeaders 依次认
proxy_set_header X-Original-Forwarded-For $http_x_forwarded_for;
proxy_set_header X-Forwarded-For   $proxy_add_x_forwarded_for;
proxy_set_header X-Forwarded-Proto $scheme;
# 同样带端口，见上面对 $host 的说明。
proxy_set_header X-Forwarded-Host  $iptv_upstream_host;

# 空 Connection 才能让上游 keepalive 生效（upstream 块里配了 32）。
# 透传客户端的 keep-alive 会把连接钉死在一个后端连接上。
proxy_set_header Connection        "";

# 超时
proxy_connect_timeout 10s;
proxy_send_timeout    300s;
proxy_read_timeout    300s;

# ---- 缓冲 ----
proxy_buffering       on;
proxy_buffer_size     16k;
proxy_buffers         8 16k;
proxy_busy_buffers_size 32k;
