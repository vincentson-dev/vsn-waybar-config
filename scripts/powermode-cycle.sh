#!/usr/bin/env bash
modes=("performance" "balanced" "power-saver")
current=$(powerprofilesctl get 2>/dev/null)

for i in "${!modes[@]}"; do
    if [[ "${modes[$i]}" == "$current" ]]; then
        if [[ "$1" == "reverse" ]]; then
            next="${modes[$(( (i - 1 + ${#modes[@]}) % ${#modes[@]} ))]}"
        else
            next="${modes[$(( (i + 1) % ${#modes[@]} ))]}"
        fi
        powerprofilesctl set "$next"
        exit 0
    fi
done

powerprofilesctl set "balanced"
