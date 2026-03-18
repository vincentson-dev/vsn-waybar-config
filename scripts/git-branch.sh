#!/usr/bin/env bash
# ~/.config/waybar/scripts/git-branch.sh
# Outputs current git branch for the active window's cwd.
# Falls back silently if not in a repo.

# Try to resolve the focused terminal's working directory via hyprctl
FOCUSED_PID=$(hyprctl activewindow -j 2>/dev/null | jq -r '.pid // empty')

if [[ -n "$FOCUSED_PID" ]]; then
    CWD=$(readlink -f "/proc/$FOCUSED_PID/cwd" 2>/dev/null)
fi

# Fallback to $HOME if we can't resolve
CWD="${CWD:-$HOME}"

BRANCH=$(git -C "$CWD" symbolic-ref --short HEAD 2>/dev/null)

if [[ -n "$BRANCH" ]]; then
    # Show dirty state
    DIRTY=$(git -C "$CWD" status --porcelain 2>/dev/null | wc -l)
    if [[ "$DIRTY" -gt 0 ]]; then
        echo "${BRANCH}*"
    else
        echo "${BRANCH}"
    fi
fi
# Output nothing (hides module) when not in a git repo
