#!/bin/bash
set -e
if [ -z "$SERVICE_INSTANCE" ]; then
  SERVICE_INSTANCE=development
fi
exec /usr/local/sbin/nutcracker -c /code/twemproxy/conf/$SERVICE_INSTANCE.yaml
