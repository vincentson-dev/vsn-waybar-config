#!/usr/bin/env bash
STATE_FILE="/tmp/waybar-system-toggle"

if [ -f "$STATE_FILE" ]; then
    rm "$STATE_FILE"
else
    touch "$STATE_FILE"
fi

pkill -SIGUSR1 waybar
