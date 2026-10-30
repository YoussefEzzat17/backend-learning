#!/bin/bash
# Commit and push any change in the published notes. Run by launchd every minute.
set -e
cd "$(dirname "$0")/.."
git add -A
if ! git diff --cached --quiet; then
  git commit -q -m "Update notes $(date '+%Y-%m-%d %H:%M')"
  git push -q origin main
fi
