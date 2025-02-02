FROM alpine:3.17.2
ARG s6_version=v3.1.4.1
ARG TARGETPLATFORM
RUN case ${TARGETPLATFORM} in \
         "linux/amd64")  ARCH=x86_64  ;; \
         "linux/arm64")  ARCH=aarch64  ;; \
         "linux/arm/v7") ARCH=armhf  ;; \
         "") ARCH=x86_64  ;; \
    esac \
  && set -x && apk add --no-cache curl coreutils tzdata shadow xz \
  && curl -L -s https://github.com/just-containers/s6-overlay/releases/download/${s6_version}/s6-overlay-noarch.tar.xz | tar Jxpf - -C / \
  && curl -L -s https://github.com/just-containers/s6-overlay/releases/download/${s6_version}/s6-overlay-$ARCH.tar.xz | tar Jxpf - -C / \
  && groupmod -g 911 users && \
  useradd -u 911 -U -d /config -s /bin/false abc && \
  usermod -G users abc && \
  mkdir -p /app /config /defaults && \
  apk del --no-cache curl \
  apk del --purge \
  rm -rf /tmp/*

ENTRYPOINT [ "/init" ]
