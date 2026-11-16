# Workspace Overview

This repo is [NAME]'s shared workspace for every AI harness they use. It holds shared memory, the wiki knowledge
layer, and one folder per business section. It syncs between machines through Git; always use repo-relative paths.

Use the memory system before answering strategy, planning, client, sales, content or automation questions.

## Memory Reads

1. Read `USER.md` (who the user is, approval boundaries) and `shared-memory/OVERVIEW.md` (business context, voice,
   hard rules).
2. Read the relevant section `MEMORY.md` if needed:
<!-- sections:start -->
   - `workspace/MEMORY.md`: main agent: daily queue, priorities, cross-section recaps.
<!-- sections:end -->
3. Read `wiki/index.md`, then open only the pages needed. The wiki is canonical long-term memory
   (`wiki/pages/memory-storage-policy.md` decides what goes where).
4. Before changing code, read `projects/index.md`, the project profile, then that repo's own instructions.
5. For recent context, skim the newest dated files in the section's `memory/` folder.

Pull the minimum relevant files and cite what you used.

## Memory Writes

- When a session that changed strategy, state, content or code wraps up: append 2 to 5 lines to
  `<section>/memory/YYYY-MM-DD.md`.
- Durable cross-section facts go to the wiki (page + `wiki/index.md` line + `wiki/log.md` entry) per
  `wiki/SCHEMA.md`; unverified material goes to `wiki/inbox.md`. Use a clean-context subagent when supported.
- Update a section `MEMORY.md` only for curated, long-lived facts; bump its `Last updated` line.
- Update `USER.md` only with compact, user-confirmed facts.
- Commit and push by default so other machines stay in sync.

## Repository Map

- `workspace*/`: business sections (`AGENTS.md`, `MEMORY.md`, `SOUL.md`, dated `memory/`). Add one with
  `scripts/new-section.sh <name> "<purpose>"`.
- `wiki/`: durable linked knowledge. `shared-memory/`: one-page business overview.
- `projects/`: code repo registry. `skills/public/`: reusable procedures (linked into `.claude/skills/`).
- `outputs/`: deliverables for review. `brand-kit.md`: brand rules. `.env*`: secrets, never read or print.

## Working Style

- Concise, direct, execution-focused. Answer what was asked; ask when unsure instead of guessing.
- Prove behavior with a real end-to-end run, not only unit tests; record exact blockers.
- Keep prompts and docs harness-agnostic: write "the agent" or "the harness".
