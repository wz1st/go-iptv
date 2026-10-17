# 反代到 iptv-api 的公共参数

proxy_http_version 1.1;

# Host 必须透传原始 Host：后端会用它拼 APK 里烧的服务器地址、
proxy_set_header Host              $iptv_upstream_host;

proxy_set_header X-Real-IP         $remote_addr;

# 后端 router.go 的 RemoteIPHeaders 依次认
proxy_set_header X-Original-Forwarded-For $http_x_forwarded_for;
proxy_set_header X-Forwarded-For   $proxy_add_x_forwarded_for;
# 透传上游反代的协议（见 nginx.conf 的 map $iptv_forwarded_proto）：
# 反代已做 HTTPS 终结时下发的 X-Forwarded-Proto 优先，否则回落本层 $scheme。
# 这是「反代友好」的关键 —— 否则本层 :80 收到明文转发会告诉后端 proto=http，
# 后端下发的 http:// 地址在公网 https 上下文里会被混合内容策略拦掉、APK 取流失败。
proxy_set_header X-Forwarded-Proto $iptv_forwarded_proto;
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
