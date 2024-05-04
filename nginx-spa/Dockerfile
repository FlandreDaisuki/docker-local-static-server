FROM nginx:1.25.5-alpine

RUN apk add curl --no-cache \
 && curl -sL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/local/bin/cloudflared \
 && chmod +x /usr/local/bin/cloudflared \
 && mkdir -p /www

COPY start.sh /
COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN chmod +x /start.sh

VOLUME [ "/www" ]

WORKDIR "/www"

CMD [ "/start.sh" ]
