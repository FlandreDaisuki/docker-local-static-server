#!/bin/sh

set -e

# http server
/docker-entrypoint.sh nginx

# tunnel
cloudflared tunnel --url "http://localhost:80"
