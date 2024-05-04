# docker-local-static-server

A local static server expose to the internet with cloudflared tunnel

## Usage

### nginx-spa

```shell
docker run --rm -it \
  -v "${PWD}:/www:ro" \
  ghcr.io/flandredaisuki/dlss:nginx-spa-1.0.0
```

### python3

```shell
docker run --rm -it \
  -v "${PWD}:/www:ro" \
  ghcr.io/flandredaisuki/dlss:python3-1.0.0
```

### darkhttpd

```shell
docker run --rm -it \
  -v "${PWD}:/www:ro" \
  ghcr.io/flandredaisuki/dlss:darkhttpd-1.0.0
```

## Comparison

||darkhttpd|python3|nginx-spa|
|-|:-:|:-:|:-:|
|directory listing|✅|✅|❌|
|SPA supports|❌|❌|✅|
|image size (1.0.0) |🥇(48.4 MB)|🥉(97.7 MB)|🥈(85 MB)|

<!-- cspell:ignore darkhttpd cloudflared -->
