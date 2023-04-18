#!/bin/bash

cloudflared update

# http server
python -m http.server -d /root/www "${PORT:-8080}" &

# tunnel
cloudflared tunnel --url "localhost:${PORT:-8080}" &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?
