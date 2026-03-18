#!/usr/bin/env bash
mode=$(powerprofilesctl get 2>/dev/null)
case "$mode" in
    performance) echo "↯" ;;
    balanced)    echo "⚖" ;;
    power-saver) echo "⬡" ;;
    *)           echo "⚖" ;;
esac
