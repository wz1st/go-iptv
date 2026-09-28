ARG APK_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/alpine


FROM alpine:latest AS fetch

ARG APK_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/alpine
ARG API_VERSION=latest
ARG ENGINE_VERSION=latest
ARG FRONT_VERSION=same
ARG START_VERSION=same
ARG TARGETARCH
ARG TARGETVARIANT

ENV API_REPO=wz1st/go-iptv
ENV ENGINE_REPO=wz1st/go-iptv
ENV FRONT_REPO=wz1st/iptv-web
ENV START_REPO=wz1st/iptv-start

WORKDIR /dl

RUN --mount=type=secret,id=gh_token <<'SH'
set -eu

sed -i "s|https\?://dl-cdn.alpinelinux.org/alpine|${APK_MIRROR}|g" /etc/apk/repositories
apk add --no-cache curl tar coreutils jq >/dev/null

fail() { echo "FATAL: $*" >&2; exit 1; }
note() { echo "==== $* ===="; }

TOKEN=""
if [ -s /run/secrets/gh_token ]; then TOKEN=$(cat /run/secrets/gh_token); fi

ghapi() {
  if [ -n "$TOKEN" ]; then
    curl -fsSL --connect-timeout 15 --max-time 60 -H "Authorization: Bearer $TOKEN" "$@"
  else
    curl -fsSL --connect-timeout 15 --max-time 60 "$@"
  fi
}

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

latest_tag() {
  _json=$(ghapi "https://api.github.com/repos/$1/releases?per_page=100") \
    || fail "取 $1 的 release 列表失败（网络不通或被 GitHub 限额，可加 --secret id=gh_token,env=GITHUB_TOKEN）"
  _t=$(printf '%s' "$_json" | jq -r --arg re "$2" --arg own "$3" --arg other "$4" '
        [ .[]
          | select((.prerelease | not)
                   and (.tag_name | test($re))
                   and ([.assets[]?.name] | index($own) != null)
                   and ([.assets[]?.name] | index($other) == null)) ]
        | sort_by(.tag_name | ltrimstr("engine-v") | ltrimstr("v")
                  | split(".") | map(tonumber))
        | (last // {}) | .tag_name // empty')
  [ -n "$_t" ] || fail "$1 里找不到匹配 $2 的 release 标签"
  printf '%s' "$_t"
}

sha_check() {
  _want=$(awk -v n="$2" '{gsub(/^\*/, "", $2); if ($2 == n) print $1}' "$1" | head -1)
  [ -n "$_want" ] || fail "$1 里没有 $2 的校验值"
  _got=$(sha256sum "$3" | cut -d' ' -f1)
  [ "$_want" = "$_got" ] || fail "$2 校验失败：期望 $_want，实际 $_got"
  note "$2 sha256 通过（$_got）"
}

arch_check() {
  _f="$1"
  _magic=$(dd if="$_f" bs=1 count=4 2>/dev/null | od -An -tx1 | tr -d ' \n')
  [ "$_magic" = "7f454c46" ] || fail "$_f 不是 ELF 可执行文件"
  set -- $(dd if="$_f" bs=1 skip=18 count=2 2>/dev/null | od -An -tu1)
  _e=$(( $1 + 256 * $2 ))
  [ "$_e" = "$EM" ] || fail "$_f 的 ELF e_machine=$_e，期望 $EM（架构不符）"
  note "$(basename "$_f") 架构自检通过（e_machine=$_e）"
}

MACH="${TARGETARCH:-}"
if [ -z "$MACH" ]; then
  case "$(uname -m)" in
    x86_64) MACH=amd64 ;;
    *) fail "$(uname -m) 不是 x86_64：本包只发 amd64" ;;
  esac
fi
case "${MACH}${TARGETVARIANT:-}" in
  amd64) ARCH=amd64; EM=62 ;;
  *) fail "不支持的架构 TARGETARCH=${MACH} TARGETVARIANT=${TARGETVARIANT:-}（发布资产只有 amd64）" ;;
esac
note "架构 ${MACH}${TARGETVARIANT:-} -> 资产后缀 ${ARCH}"

TAG_RE='^v[0-9]+\.[0-9]+\.[0-9]+$'
ENGINE_TAG_RE='^engine-v[0-9]+\.[0-9]+\.[0-9]+$'
API_SUMS=SHA256SUMS.txt
ENGINE_SUMS=SHA256SUMSEngine.txt

if [ "${API_VERSION}" = "latest" ]; then
  API_TAG=$(latest_tag "$API_REPO" "$TAG_RE" "$API_SUMS" "$ENGINE_SUMS")
else
  API_TAG="$API_VERSION"
fi
if [ "${ENGINE_VERSION}" = "latest" ]; then
  ENGINE_TAG=$(latest_tag "$ENGINE_REPO" "$ENGINE_TAG_RE" "$ENGINE_SUMS" "$API_SUMS")
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

API_ASSET="iptv_${ARCH}"
ENGINE_ASSET="engine_${ARCH}"
START_ASSET="start_${ARCH}"

ghdl "$API_REPO" "$API_TAG" "$API_ASSET" "/dl/$API_ASSET"
ghdl "$API_REPO" "$API_TAG" "$API_SUMS" "/dl/$API_SUMS"
ghdl "$ENGINE_REPO" "$ENGINE_TAG" "$ENGINE_ASSET" "/dl/$ENGINE_ASSET"
ghdl "$ENGINE_REPO" "$ENGINE_TAG" "$ENGINE_SUMS" "/dl/$ENGINE_SUMS"
ghdl "$START_REPO" "$START_TAG" "$START_ASSET" "/dl/$START_ASSET"
ghdl "$FRONT_REPO" "$FRONT_TAG" webdist.tar.gz /dl/webdist.tar.gz

sha_check /dl/SHA256SUMS.txt "$API_ASSET" "/dl/$API_ASSET"
arch_check "/dl/$API_ASSET"
sha_check /dl/SHA256SUMSEngine.txt "$ENGINE_ASSET" "/dl/$ENGINE_ASSET"
arch_check "/dl/$ENGINE_ASSET"
arch_check "/dl/$START_ASSET"

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

grep -q "name=\"app-version\" content=\"${API_TAG}\"" /dl/out/web/index.html \
  || fail "前端版本与 api ${API_TAG} 不一致，实际是 $(grep -o 'name="app-version"[^>]*' /dl/out/web/index.html | head -1)"
note "前端版本标记与 api 同源：${API_TAG}"

chmod +x "/dl/$API_ASSET" "/dl/$ENGINE_ASSET" "/dl/$START_ASSET"
cp "/dl/$API_ASSET" /dl/out/iptv
cp "/dl/$ENGINE_ASSET" /dl/out/engine
cp "/dl/$START_ASSET" /dl/out/start
note "产物就绪"
ls -l /dl/out
SH


FROM alpine:latest

ARG APK_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/alpine

ENV TZ=Asia/Shanghai
ENV ANDROID_HOME=/opt/android-sdk
ENV ANDROID_SDK_ROOT=/opt/android-sdk

WORKDIR /app
VOLUME /config

EXPOSE 80

COPY apktool/apktool apktool/apktool.jar /usr/bin/
COPY client /client
COPY database /app/database
COPY logo /app/logo
COPY mytv /app/mytv

RUN sed -i "s|https\?://dl-cdn.alpinelinux.org/alpine|${APK_MIRROR}|g" /etc/apk/repositories \
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

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/proxy_params.inc /etc/nginx/conf.d/proxy_params.inc

COPY config.yml README.md dictionary.txt alias.json ChangeLog.md keystore.p12 /app/

ARG TARGETARCH=amd64

RUN case "${TARGETARCH}" in \
        amd64) echo "目标架构: ${TARGETARCH}" ;; \
        *) echo "FATAL: 不支持的架构 ${TARGETARCH}（发布资产只有 amd64）" >&2; exit 1 ;; \
    esac

COPY --from=fetch --chmod=0755 /dl/out/iptv /app/iptv
COPY --from=fetch --chmod=0755 /dl/out/engine /app/engine
COPY --from=fetch --chmod=0755 /dl/out/start /app/start

ARG APP_VERSION=""
COPY --from=fetch /dl/out/web /app/web

ENV GOMEMLIMIT=1GiB

HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
    CMD wget -qO- http://127.0.0.1/version >/dev/null 2>&1 || exit 1

CMD ["./start"]
