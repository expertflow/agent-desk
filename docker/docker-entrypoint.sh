#!/bin/sh

echo "loading"

envsubst < config.json.template > /usr/share/nginx/html/assets/config.json

echo "Starting Unified Agent"

exec nginx -g "daemon off;" "$@" 