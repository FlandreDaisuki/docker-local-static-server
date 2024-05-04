FROM python:3.12.3-alpine

ENV PORT=8080

RUN apk add --no-cache curl \
  && curl -sL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/local/bin/cloudflared \
  && chmod +x /usr/local/bin/cloudflared \
  && mkdir -p /www

COPY start.sh /

RUN chmod +x /start.sh

VOLUME [ "/www" ]

WORKDIR /www

CMD [ "/start.sh" ]
