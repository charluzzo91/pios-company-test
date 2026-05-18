---
name: project-github-sync
description: GitHub repo and hourly cron sync setup for this project
metadata: 
  node_type: memory
  type: project
  originSessionId: a4e2e120-fab9-465b-8967-ccaef5f51a1f
---

The project at `/home/charlievallone/projects/pios-company-test` is a git repo synced to GitHub at `https://github.com/charluzzo91/pios-company-test`.

**Why:** User requested persistent memory backed by GitHub with hourly auto-sync.

**How to apply:** All project files and Claude memory files are auto-committed and pushed hourly via cron. When working in this project, new files will be picked up automatically. The sync script at `sync-to-github.sh` also copies Claude memory files from `~/.claude/projects/.../memory/` into the repo's `memory/` folder before each push.

Cron entry: `0 * * * * /home/charlievallone/projects/pios-company-test/sync-to-github.sh`
GitHub username: charluzzo91
