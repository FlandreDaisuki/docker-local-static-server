# docker-local-static-server

A local static server expose to the internet

## usage

```shell
docker run --rm -it \
  -v "${PWD}:/root/www:ro" \
  ghcr.io/flandredaisuki/docker-local-static-server \
  npm run start
```

or make it an alias

```shell
# in your ~/.*shrc

alias ngrok-alt='docker run --rm -it \
  -v "${PWD}:/root/www:ro" \
  ghcr.io/flandredaisuki/docker-local-static-server \
  npm run start'
```
