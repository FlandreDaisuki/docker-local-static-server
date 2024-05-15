#!/bin/sh

set -e

cloudflared update

darkhttpd /www --mimetypes /etc/darkhttpd/mime.types --port "${PORT:-8080}" &
PID1="$!"

# tunnel
cloudflared tunnel --url "http://localhost:${PORT:-8080}" &
PID2="$!"

# Wait for any process to exit
wait "$PID1" "$PID2"

# Exit with status of process that exited first
exit $?
