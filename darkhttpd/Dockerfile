ARG ALPINE_TAG=3.22.1
FROM alpine:${ALPINE_TAG}

ARG TARGETOS
ARG TARGETARCH

ENV PORT=8080
ENV CLOUDFLARED_VERSION='2026.1.1'

RUN apk add --no-cache curl darkhttpd \
  && curl -sL "https://github.com/cloudflare/cloudflared/releases/download/${CLOUDFLARED_VERSION}/cloudflared-${TARGETOS}-${TARGETARCH}" -o /usr/local/bin/cloudflared \
  && chmod +x /usr/local/bin/cloudflared \
  && mkdir -p /www /etc/darkhttpd \
  && cloudflared update

COPY start.sh /
COPY mime.types /etc/darkhttpd/

RUN chmod +x /start.sh

VOLUME [ "/www" ]

WORKDIR /www

CMD [ "/start.sh" ]
