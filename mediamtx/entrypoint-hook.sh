#!/bin/sh

[ "$MTX_CONFIG_PATH" ] && [ "$MTX_CONFIG_PATH" != "/mediamtx.yml" ] && [ -f "$MTX_CONFIG_PATH" ] && cp -f "$MTX_CONFIG_PATH" "/mediamtx.yml"

exec "$@"