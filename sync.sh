#!/bin/bash

set -e

cd "$HOME/dotfiles"

git add -A

if git diff --cached --quiet; then
    exit 0
fi

git commit -m "Auto-sync $(date '+%Y-%m-%d %H:%M:%S')"
git push
