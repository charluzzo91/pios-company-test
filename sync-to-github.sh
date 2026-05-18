#!/usr/bin/env bash
# Syncs project and Claude memory to GitHub

PROJECT_DIR="/home/charlievallone/projects/pios-company-test"
MEMORY_DIR="/home/charlievallone/.claude/projects/-home-charlievallone-projects-pios-company-test/memory"
LOG="$PROJECT_DIR/.sync.log"

cd "$PROJECT_DIR" || exit 1

# Mirror Claude memory files into the repo
if [ -d "$MEMORY_DIR" ]; then
  cp -r "$MEMORY_DIR"/. "$PROJECT_DIR/memory/"
fi

# Stage everything, skip if nothing changed
git add -A
if git diff --cached --quiet; then
  echo "[$(date)] No changes to sync." >> "$LOG"
  exit 0
fi

git commit -m "Auto-sync: $(date '+%Y-%m-%d %H:%M')"
git push origin main >> "$LOG" 2>&1
echo "[$(date)] Sync complete." >> "$LOG"
