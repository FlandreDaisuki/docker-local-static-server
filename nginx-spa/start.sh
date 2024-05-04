#!/bin/sh

set -e

cloudflared update

# http server
/docker-entrypoint.sh nginx

# tunnel
cloudflared tunnel --url "http://localhost:80"
