FROM python:3.11.3-slim

VOLUME [ "/root/www" ]

WORKDIR /root

ENV PORT=8080

RUN apt-get update \
 && apt-get install -y curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/local/bin/cloudflared \
 && chmod +x /usr/local/bin/cloudflared

COPY start.sh /root

CMD [ "/bin/bash", "/root/start.sh" ]
