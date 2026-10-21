#!/bin/sh
# Serve the Technovate page for the live preview.
if curl -sf -o /dev/null --max-time 1 http://127.0.0.1:8080/; then
  exit 0
fi
cd /workspace/site
python3 -m http.server 8080 --bind 0.0.0.0 >/tmp/site-server.log 2>&1 &
exit 0
