---
name: new-section
description: Add a new business section (a client line, product, community, team) to this workspace with its own AGENTS.md, MEMORY.md, SOUL.md and memory folder, and register it in the root routing. Use when the user says "add a section", "new workspace for X", or starts a new line of business.
---

# New section

1. Pick a short kebab-case name and a one-line purpose.
2. Run `scripts/new-section.sh <name> "<purpose>"` from the repo root.
3. Check the new line in root `AGENTS.md` (between the `sections` markers) and the new `workspace-<name>/` folder.
4. Add a wiki page for the section if it has durable facts, plus an index line and a log entry.
5. Commit and push.
