#!/bin/bash

cloudflared update

# http server
/docker-entrypoint.sh nginx

# tunnel
cloudflared tunnel --url "localhost:80"
