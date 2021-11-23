#!/bin/bash
#
# Docker entrypoint script to ensure flexibility in applying configuration at
# runtime

if [[ -d "${DIR}" ]]; then
  /bin/run-parts --verbose /docker-entrypoint.d
fi

exec "$@"
