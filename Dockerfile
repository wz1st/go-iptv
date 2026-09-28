# syntax=docker/dockerfile:1
# 在线下载版：不编译 Go 与前端，产物按目标架构从各仓 Release 取最新版组装；任一环节出错立即中止，只认最新版、不回落旧版本。

# 全局 ARG 必须在第一个 FROM 之前声明，FROM 之后的同名 ARG 才能继承默认值。
ARG APK_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/alpine


# ==================== 阶段 1：从 GitHub Release 下载并校验产物 ====================
FROM alpine:latest AS fetch

ARG APK_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/alpine
# 版本：latest = 自动探测该仓最新的三段号标签；也可写死 vX.Y.Z。
ARG API_VERSION=latest
ARG ENGINE_VERSION=latest
# 前端与启动器默认 same（跟随 api 版本），因为 CI 用同一个版本号发布三处。
ARG FRONT_VERSION=same
ARG START_VERSION=same
# BuildKit 自动注入；非 BuildKit 构建时脚本按 uname 兜底。
ARG TARGETARCH
ARG TARGETVARIANT

# 产物来源（与 .github/workflows/docker-image.yml 的发布目标逐字对应）。
ENV API_REPO=wz1st/go-iptv
ENV ENGINE_REPO=wz1st/go-iptv
ENV FRONT_REPO=wz1st/iptv-web
ENV START_REPO=wz1st/iptv-start

WORKDIR /dl

# 可选令牌走 secret 挂载（--secret id=gh_token,env=GITHUB_TOKEN），不传即匿名访问
RUN --mount=type=secret,id=gh_token <<'SH'
set -eu

sed -i "s#https\?://dl-cdn.alpinelinux.org/alpine#${APK_MIRROR}#g" /etc/apk/repositories
apk add --no-cache curl tar coreutils >/dev/null

fail() { echo "FATAL: $*" >&2; exit 1; }
note() { echo "==== $* ===="; }

# 令牌从 secret 挂载读，不进构建参数也不入镜像历史；缺失即匿名，公开仓也够用。
TOKEN=""
if [ -s /run/secrets/gh_token ]; then TOKEN=$(cat /run/secrets/gh_token); fi

# GitHub API 请求：带令牌时提高频次限额；-f 让 4xx/5xx 直接失败，超时避免网络黑洞把构建挂死。
ghapi() {
  if [ -n "$TOKEN" ]; then
    curl -fsSL --connect-timeout 15 --max-time 60 -H "Authorization: Bearer $TOKEN" "$@"
  else
    curl -fsSL --connect-timeout 15 --max-time 60 "$@"
  fi
}

# 下载 Release 资产；失败或结果为空即终止（不做旧版本回落）。
ghdl() {
  _url="https://github.com/$1/releases/download/$2/$3"
  note "下载 $1 $2 的 $3"
  if [ -n "$TOKEN" ]; then
    curl -fL --retry 3 --connect-timeout 15 --max-time 600 -o "$4" -H "Authorization: Bearer $TOKEN" "$_url" \
      || fail "$_url 下载失败"
  else
    curl -fL --retry 3 --connect-timeout 15 --max-time 600 -o "$4" "$_url" || fail "$_url 下载失败"
  fi
  [ -s "$4" ] || fail "$3 下载结果为空"
}

# 取某仓版本号最大的 release 标签（标签必须匹配 $2 这个三段号正则）。
# 提取不按行做（sed 逐行 + 贪婪匹配只会留下最后一个 tag_name，且把"响应必须是多行 pretty JSON"变成隐藏前提）。
#
# 判据是**版本号数值**而不是列表顺序：发布位保留历史（旧版 api 可能还指着旧引擎），
# 补发/重跑旧 tag 会让它以 created_at 最新排到首位，取 head -1 就会装回旧版本。
# awk 把三段数字补零成定宽键 → 普通字典序即等价于数值序，不依赖 sort -k 的实现差异。
latest_tag() {
  _json=$(ghapi "https://api.github.com/repos/$1/releases?per_page=100") \
    || fail "取 $1 的 release 列表失败（网络不通或被 GitHub 限额，可加 --secret id=gh_token,env=GITHUB_TOKEN）"
  _t=$(printf '%s' "$_json" | grep -o '"tag_name"[^,]*' | sed 's/.*"\([^"]*\)".*/\1/' \
       | grep -E "$2" \
       | awk -F'[-v.]' '{ printf "%09d%09d%09d\t%s\n", $(NF-2), $(NF-1), $NF, $0 }' \
       | sort | tail -1 | cut -f2)
  [ -n "$_t" ] || fail "$1 里找不到匹配 $2 的 release 标签"
  printf '%s' "$_t"
}

# sha256 校验：从校验文件按资产名取值，取不到即失败。
sha_check() {
  _want=$(awk -v n="$2" '{gsub(/^\*/, "", $2); if ($2 == n) print $1}' "$1" | head -1)
  [ -n "$_want" ] || fail "$1 里没有 $2 的校验值"
  _got=$(sha256sum "$3" | cut -d' ' -f1)
  [ "$_want" = "$_got" ] || fail "$2 校验失败：期望 $_want，实际 $_got"
  note "$2 sha256 通过（$_got）"
}

# 架构自检：ELF 魔数 + e_machine，防止把别的架构的产物装进镜像。
arch_check() {
  _f="$1"
  _magic=$(dd if="$_f" bs=1 count=4 2>/dev/null | od -An -tx1 | tr -d ' \n')
  [ "$_magic" = "7f454c46" ] || fail "$_f 不是 ELF 可执行文件"
  set -- $(dd if="$_f" bs=1 skip=18 count=2 2>/dev/null | od -An -tu1)
  _e=$(( $1 + 256 * $2 ))
  [ "$_e" = "$EM" ] || fail "$_f 的 ELF e_machine=$_e，期望 $EM（架构不符）"
  note "$(basename "$_f") 架构自检通过（e_machine=$_e）"
}

# ---- 目标架构 -> 发布资产后缀（CI 只产出 amd64 / arm / arm64 三份）----
MACH="${TARGETARCH:-}"
if [ -z "$MACH" ]; then
  case "$(uname -m)" in
    x86_64) MACH=amd64 ;;
    aarch64) MACH=arm64 ;;
    armv7l|armv6l|arm) MACH=arm ;;
  esac
fi
case "${MACH}${TARGETVARIANT:-}" in
  amd64) ARCH=amd64; EM=62 ;;
  arm64) ARCH=arm64; EM=183 ;;
  arm|armv7|armv7l) ARCH=arm; EM=40 ;;
  *) fail "不支持的架构 TARGETARCH=${MACH} TARGETVARIANT=${TARGETVARIANT:-}（发布资产只有 amd64 / arm / arm64）" ;;
esac
note "架构 ${MACH}${TARGETVARIANT:-} -> 资产后缀 ${ARCH}"

# ---- 解析三个仓的标签：latest 走探测，显式值原样使用 ----
TAG_RE='^v[0-9]+\.[0-9]+\.[0-9]+$'
ENGINE_TAG_RE='^engine-v[0-9]+\.[0-9]+\.[0-9]+$'

if [ "${API_VERSION}" = "latest" ]; then
  API_TAG=$(latest_tag "$API_REPO" "$TAG_RE")
else
  API_TAG="$API_VERSION"
fi
if [ "${ENGINE_VERSION}" = "latest" ]; then
  ENGINE_TAG=$(latest_tag "$ENGINE_REPO" "$ENGINE_TAG_RE")
else
  case "$ENGINE_VERSION" in
    engine-*) ENGINE_TAG="$ENGINE_VERSION" ;;
    *) ENGINE_TAG="engine-$ENGINE_VERSION" ;;
  esac
fi
case "$FRONT_VERSION" in
  same|latest|"") FRONT_TAG="$API_TAG" ;;
  *) FRONT_TAG="$FRONT_VERSION" ;;
esac
case "$START_VERSION" in
  same|latest|"") START_TAG="$API_TAG" ;;
  *) START_TAG="$START_VERSION" ;;
esac
note "版本：api=$API_TAG engine=$ENGINE_TAG front=$FRONT_TAG start=$START_TAG"

# ---- 下载六份资产 ----
API_ASSET="iptv_${ARCH}"
ENGINE_ASSET="engine_${ARCH}"
START_ASSET="start_${ARCH}"

ghdl "$API_REPO" "$API_TAG" "$API_ASSET" "/dl/$API_ASSET"
ghdl "$API_REPO" "$API_TAG" SHA256SUMS.txt /dl/SHA256SUMS.txt
ghdl "$ENGINE_REPO" "$ENGINE_TAG" "$ENGINE_ASSET" "/dl/$ENGINE_ASSET"
ghdl "$ENGINE_REPO" "$ENGINE_TAG" SHA256SUMSEngine.txt /dl/SHA256SUMSEngine.txt
ghdl "$START_REPO" "$START_TAG" "$START_ASSET" "/dl/$START_ASSET"
ghdl "$FRONT_REPO" "$FRONT_TAG" webdist.tar.gz /dl/webdist.tar.gz

# ---- 校验：三个二进制都要「sha256 对得上 + 架构对得上」----
sha_check /dl/SHA256SUMS.txt "$API_ASSET" "/dl/$API_ASSET"
arch_check "/dl/$API_ASSET"
sha_check /dl/SHA256SUMSEngine.txt "$ENGINE_ASSET" "/dl/$ENGINE_ASSET"
arch_check "/dl/$ENGINE_ASSET"
# 启动器仓没有发布校验文件，只做架构自检。
arch_check "/dl/$START_ASSET"

# 前端包：优先用 api 的 SHA256SUMS.txt 交叉校验（CI 把同一份包发到两处）。
if awk -v n=webdist.tar.gz '{gsub(/^\*/, "", $2); if ($2 == n) print $1}' /dl/SHA256SUMS.txt | grep -q .; then
  sha_check /dl/SHA256SUMS.txt webdist.tar.gz /dl/webdist.tar.gz
else
  echo "WARN: SHA256SUMS.txt 里没有 webdist.tar.gz 条目，跳过交叉校验"
fi

mkdir -p /dl/out
tar -xzf /dl/webdist.tar.gz -C /dl/out
[ -d /dl/out/webdist ] || fail "前端包里没有 webdist/ 目录"
mv /dl/out/webdist /dl/out/web
[ -f /dl/out/web/index.html ] || fail "前端包里缺少 index.html"

# 前端与 api 必须同版本：index.html 的 app-version 由 vite 构建期注入。
grep -q "name=\"app-version\" content=\"${API_TAG}\"" /dl/out/web/index.html \
  || fail "前端版本与 api ${API_TAG} 不一致，实际是 $(grep -o 'name="app-version"[^>]*' /dl/out/web/index.html | head -1)"
note "前端版本标记与 api 同源：${API_TAG}"

# ---- 落位成与 Dockerfile.web 完全相同的目录结构 ----
chmod +x "/dl/$API_ASSET" "/dl/$ENGINE_ASSET" "/dl/$START_ASSET"
cp "/dl/$API_ASSET" /dl/out/iptv
cp "/dl/$ENGINE_ASSET" /dl/out/engine
cp "/dl/$START_ASSET" /dl/out/start
note "产物就绪"
ls -l /dl/out
SH


# ==================== 阶段 2：运行镜像（与 Dockerfile.web 逐条一致，只差产物来源） ====================
FROM alpine:latest

ARG APK_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/alpine

ENV TZ=Asia/Shanghai
ENV ANDROID_HOME=/opt/android-sdk
ENV ANDROID_SDK_ROOT=/opt/android-sdk

WORKDIR /app
VOLUME /config

# 80 -> nginx：前端静态站点 + 后端接口代理 + 中转（/p/），对外唯一入口
EXPOSE 80

# ---- 随镜像带入的编译基底与资源 ----
COPY apktool/apktool apktool/apktool.jar /usr/bin/
COPY client /client
COPY database /app/database
COPY logo /app/logo
# mytv 编译基底（已入库）：引擎按它反编译改包，不再从 api 下载
COPY mytv /app/mytv

# ---- 包源 / 运行时依赖 / APK 工具链压在同一层：同层内「装 -> 抽 -> 裁 -> 卸」，jmods 与 build-tools 的 LLVM/renderscript 系（约 194MB）因此不进镜像 ----
# 不装 zip：Alpine 的 zip 依赖 unzip，装了它 `apk del unzip` 就只是空转（rc=0 但不卸），而运行时并不需要 zip。
RUN sed -i "s#https\?://dl-cdn.alpinelinux.org/alpine#${APK_MIRROR}#g" /etc/apk/repositories \
 && apk add --no-cache \
        openjdk17 \
        bash \
        curl \
        wget \
        unzip \
        ffmpeg \
        sqlite \
        nginx \
        libc6-compat \
        libstdc++ \
        tzdata \
 && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
 && echo ${TZ} > /etc/timezone \
 && mkdir -p /var/log/nginx /var/lib/nginx/tmp /run \
 && rm -rf /usr/lib/jvm/java-17-openjdk/jmods \
           /usr/lib/jvm/java-17-openjdk/demo \
           /usr/lib/jvm/java-17-openjdk/man \
           /usr/lib/jvm/java-17-openjdk/include \
 && curl -fsSL -o /tmp/bt.zip \
      https://dl.google.com/android/repository/build-tools_r33.0.2-linux.zip \
 && mkdir -p ${ANDROID_HOME}/build-tools \
 && unzip -q /tmp/bt.zip -d /tmp/bt \
 && mv /tmp/bt/android-13/* ${ANDROID_HOME}/build-tools/ \
 && rm -rf /tmp/bt* \
 && apk del unzip \
 && rm -rf ${ANDROID_HOME}/build-tools/lld-bin \
           ${ANDROID_HOME}/build-tools/renderscript \
           ${ANDROID_HOME}/build-tools/aidl \
           ${ANDROID_HOME}/build-tools/dexdump \
           ${ANDROID_HOME}/build-tools/llvm-rs-cc \
           ${ANDROID_HOME}/build-tools/split-select \
           ${ANDROID_HOME}/build-tools/lld \
           ${ANDROID_HOME}/build-tools/bcc_compat \
           ${ANDROID_HOME}/build-tools/aarch64-linux-android-ld \
           ${ANDROID_HOME}/build-tools/arm-linux-androideabi-ld \
           ${ANDROID_HOME}/build-tools/i686-linux-android-ld \
           ${ANDROID_HOME}/build-tools/mipsel-linux-android-ld \
           ${ANDROID_HOME}/build-tools/x86_64-linux-android-ld \
 && rm -f  ${ANDROID_HOME}/build-tools/lib64/libLLVM_android.so \
           ${ANDROID_HOME}/build-tools/lib64/libclang_android.so \
           ${ANDROID_HOME}/build-tools/lib64/libbcc.so \
           ${ANDROID_HOME}/build-tools/lib64/libbcinfo.so \
 && ln -s ${ANDROID_HOME}/build-tools/apksigner /usr/local/bin/apksigner \
 && ln -s ${ANDROID_HOME}/build-tools/zipalign /usr/local/bin/zipalign \
 && sed -i 's/\r$//' /usr/bin/apktool \
 && chmod +x /usr/bin/apktool /usr/bin/apktool.jar

# nginx 配置（worker 以 nginx 用户运行，见配置文件头）
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/proxy_params.inc /etc/nginx/conf.d/proxy_params.inc

# 运行时资源
COPY config.yml README.md dictionary.txt alias.json ChangeLog.md keystore.p12 /app/

# 三个可执行文件：--chmod 直接带可执行位，省掉 chmod 再复制一层的开销（~58MB）
ARG TARGETARCH=amd64

# 不支持的架构要停在构建期，比 COPY 抛的 file not found 直白
RUN case "${TARGETARCH}" in \
        amd64|arm|arm64) echo "目标架构: ${TARGETARCH}" ;; \
        *) echo "FATAL: 不支持的架构 ${TARGETARCH}（仅 amd64 / arm / arm64 有产物）" >&2; exit 1 ;; \
    esac

# 产物只从 fetch 阶段取，绝不读构建上下文里的 iptv_all / engine_all / start_all / webdist
COPY --from=fetch --chmod=0755 /dl/out/iptv /app/iptv
COPY --from=fetch --chmod=0755 /dl/out/engine /app/engine
COPY --from=fetch --chmod=0755 /dl/out/start /app/start

# 前端静态站点
ARG APP_VERSION=""
COPY --from=fetch /dl/out/web /app/web

# 收口自检：工具链可用 + 产物齐全 + 前端版本标记一致 + nginx 配置合法
RUN nginx -t -c /etc/nginx/nginx.conf \
 && apktool --version \
 && test -x "${ANDROID_HOME}/build-tools/aapt2" \
 && "${ANDROID_HOME}/build-tools/aapt2" version \
 && apksigner --version \
 && java -version \
 && { jarsigner -help >/dev/null 2>&1; true; } \
 && { keytool -help >/dev/null 2>&1; true; } \
 && { zipalign >/dev/null 2>&1; true; } \
 && test -f /app/web/index.html \
        || (echo "FATAL: 前端产物缺少 index.html，请先构建 iptv-web" >&2; exit 1) \
 && if [ -n "${APP_VERSION}" ]; then \
      grep -q "name=\"app-version\" content=\"${APP_VERSION}\"" /app/web/index.html \
        || { echo "FATAL: 前端产物内的版本标记与 APP_VERSION=${APP_VERSION} 不一致" >&2; \
             echo "       产物里实际是：$(grep -o 'name="app-version"[^>]*' /app/web/index.html)" >&2; \
             echo "       请用 APP_VERSION=${APP_VERSION} 重新构建 iptv-web" >&2; exit 1; }; \
      echo "==== 前端版本标记校验通过: ${APP_VERSION} ===="; \
    else \
      echo "==== 未传 APP_VERSION，跳过前端版本标记校验 ===="; \
    fi \
 && test -f /app/mytv/MyTV.apk \
 && ls -l /app/iptv /app/engine /app/start \
 && for f in /app/iptv /app/engine /app/start; do test -x "$f" || { echo "FATAL: $f 不可执行" >&2; exit 1; }; done

# Go 运行时内存软上限
ENV GOMEMLIMIT=1GiB

# 健康检查：探 /version 而不是 /admin/login
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
    CMD wget -qO- http://127.0.0.1/version >/dev/null 2>&1 || exit 1

CMD ["./start"]
