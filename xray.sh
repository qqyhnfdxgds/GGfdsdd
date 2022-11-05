#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4ae502a7-e846-403e-8224-3a3d90d15b4f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

