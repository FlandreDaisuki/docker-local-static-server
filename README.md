# docker-local-static-server

A local static server expose to the internet

## usage

```shell
docker run --rm -it \
  -v "${PWD}:/usr/share/nginx/html:ro" \
  ghcr.io/flandredaisuki/docker-local-static-server:1.0.0-cloudflared-spa
```

or make it an alias

```shell
# in your ~/.*shrc

alias ngrok-alt='docker run --rm -it \
  -v "${PWD}:/usr/share/nginx/html:ro" \
  ghcr.io/flandredaisuki/docker-local-static-server:1.0.0-cloudflared-spa'
```
