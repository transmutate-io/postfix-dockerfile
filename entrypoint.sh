#!/usr/bin/env sh

set -e

if [ -z "$@" ]; then
  postfix -c ${CONFIG_DIR} "$@"
else
  exec "$@"
fi

# Wait forever
while true; do
  tail -f /dev/null & wait ${!}
done
