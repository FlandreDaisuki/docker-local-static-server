ARG PYTHON_TAG=3.14.2-alpine3.23
FROM python:${PYTHON_TAG}

ARG TARGETOS
ARG TARGETARCH

ENV PORT=8080
ENV CLOUDFLARED_VERSION='2026.1.1'

RUN apk add --no-cache curl \
  && curl -sL "https://github.com/cloudflare/cloudflared/releases/download/${CLOUDFLARED_VERSION}/cloudflared-${TARGETOS}-${TARGETARCH}" -o /usr/local/bin/cloudflared \
  && chmod +x /usr/local/bin/cloudflared \
  && mkdir -p /www \
  && cloudflared update

COPY start.sh /

RUN chmod +x /start.sh

VOLUME [ "/www" ]

WORKDIR /www

CMD [ "/start.sh" ]
