FROM nginx:1.25.1-alpine

VOLUME [ "/usr/share/nginx/html" ]

RUN apk add curl --no-cache \
 && curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/local/bin/cloudflared \
 && chmod +x /usr/local/bin/cloudflared

COPY start.sh /root
COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD [ "/bin/sh", "/root/start.sh" ]
