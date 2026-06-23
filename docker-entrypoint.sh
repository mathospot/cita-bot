#!/bin/sh
set -eu

CONFIG_FILE="${1:-/config/grab_me.py}"
if [ "$#" -gt 0 ]; then
    shift
fi

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Config file not found: $CONFIG_FILE"
    echo "Mount your config file, for example: -v \"$PWD/grab_me.py:/config/grab_me.py:ro\""
    exit 1
fi

exec python "$CONFIG_FILE" "$@"
