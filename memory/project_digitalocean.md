---
name: project-digitalocean
description: DigitalOcean account access and doctl setup for app building and databases
metadata: 
  node_type: memory
  type: project
  originSessionId: a4e2e120-fab9-465b-8967-ccaef5f51a1f
---

User has a DigitalOcean account (`cjvallone3@gmail.com`) set up for Claude to use for app building, databases, and infrastructure.

**Why:** User wants Claude to be able to provision and manage DigitalOcean resources directly.

**How to apply:** Use `doctl` (installed at `~/.local/bin/doctl`) for all DigitalOcean operations. Always prefix with `export PATH="$PATH:/home/charlievallone/.local/bin"` in Bash commands, or use the full path `/home/charlievallone/.local/bin/doctl`. Auth context is `default` and is already configured.

Account UUID: ee3cc8e4-4baa-4e01-950f-08d19b6ef081
Droplet limit: 10
