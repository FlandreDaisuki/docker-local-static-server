#!/bin/sh

set -e

# http server
python -m http.server -d /www "${PORT:-8080}" &
PID1="$!"

# tunnel
cloudflared tunnel --url "http://localhost:${PORT:-8080}" &
PID2="$!"

# Wait for any process to exit
wait "$PID1" "$PID2"

# Exit with status of process that exited first
exit $?
