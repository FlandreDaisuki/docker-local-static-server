ARG NGINX_TAG=1.29.4-alpine3.23
FROM nginx:${NGINX_TAG}

ARG TARGETOS
ARG TARGETARCH

ENV CLOUDFLARED_VERSION='2026.1.1'

RUN apk add curl --no-cache \
 && curl -sL "https://github.com/cloudflare/cloudflared/releases/download/${CLOUDFLARED_VERSION}/cloudflared-${TARGETOS}-${TARGETARCH}" -o /usr/local/bin/cloudflared \
 && chmod +x /usr/local/bin/cloudflared \
 && mkdir -p /www \
 && cloudflared update

COPY start.sh /
COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN chmod +x /start.sh

VOLUME [ "/www" ]

WORKDIR "/www"

CMD [ "/start.sh" ]
