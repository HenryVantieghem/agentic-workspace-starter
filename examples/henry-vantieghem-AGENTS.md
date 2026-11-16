# Repository Guidance

This repo is Henry Vantieghem's shared workspace for Agentic Engineering Consulting (agenticengineeringconsulting.com)
and every AI harness he uses (Hermes via Telegram, Claude Code, Codex). It holds cross-workspace assistant memory, the
wiki knowledge layer, client delivery notes, the course, content, coding notes and business planning. It syncs through
GitHub between the Mac Studio (always on, runs the Hermes gateway 24/7) and the MacBook. Always use repo-relative
paths in docs, never absolute machine paths.

Use the memory system before answering client, strategy, planning, pricing, sales, content, course or automation
questions.

## Memory Routing (reads)

1. Read `USER.md` (who Henry is, approval boundaries) and `shared-memory/OVERVIEW.md` (business context, voice,
   hard rules).
2. Read the relevant section `MEMORY.md` if needed:
<!-- sections:start -->
   - `workspace/MEMORY.md`: main agent: daily queue, priorities, cross-section recaps.
   - `workspace-clients/MEMORY.md`: client delivery: active engagements, contacts, open loops.
   - `workspace-sales/MEMORY.md`: pipeline, proposals, pricing, outreach.
   - `workspace-course/MEMORY.md`: the course: curriculum, students, templates, launches.
   - `workspace-creative/MEMORY.md`: content: LinkedIn, X, YouTube, newsletter, brand assets.
   - `workspace-coding/MEMORY.md`: Hermes setup, agents, automations, products and code projects.
   - `workspace-admin/MEMORY.md`: finances, invoices, Stripe, legal, travel.
<!-- sections:end -->
3. Read `wiki/index.md` to find durable background pages, then open only the pages needed. The wiki is the canonical
   long-term memory across all harnesses (`wiki/pages/memory-storage-policy.md` is the routing contract).
4. Code lives in its own repos: `projects/index.md` lists each one with its remote and purpose. Read a project's
   profile, then that repo's own `AGENTS.md`, before changing it.
5. For recent context, skim the latest dated files in the relevant `workspace-*/memory/` folder.

Pull the minimum relevant files and cite what you used.

## Memory Write-back (writes)

- Before ending a session that changed strategy, client state, content, code or plans: append 2 to 5 summary lines
  to `<section>/memory/YYYY-MM-DD.md` (create it if it is the day's first entry). A session is one continuous task
  thread in any harness; write the summary when the work wraps up, not per edit.
- Promote durable cross-section facts to the wiki (`wiki/pages/` + one line in `wiki/index.md` + an entry in
  `wiki/log.md`), following `wiki/SCHEMA.md`. Unverified material goes to `wiki/inbox.md`.
- Update a section `MEMORY.md` only for curated, long-lived facts; bump its `Last updated` line when you do.
- Commit and push by default so the other machine and Hermes stay in sync. Never force-push `main`.
- New section (a new client line, a product, a community): run `scripts/new-section.sh <name> "<purpose>"`.

## Repo Map

- `workspace*/`: one folder per business section (`AGENTS.md`, `MEMORY.md`, `SOUL.md`, dated `memory/` notes).
- `wiki/`: long-term knowledge graph (Obsidian-readable). Canonical shared memory.
- `shared-memory/`: thin operator overview; details live in the wiki.
- `projects/`: registry of the code repos (clients, products) with remotes; the code is not in this repo.
- `skills/public/`: cross-harness skills, each a `SKILL.md` with YAML frontmatter; `.claude/skills/` links to them.
- `brand-kit.md`: visual and voice brand rules. `outputs/`: deliverables for review. `scripts/`: workspace tools.
- `.env*` files are secrets: never read, print or commit values; name credentials only.

## Engineering Excellence

- Anchor changes to a milestone, acceptance criterion, policy rule or explicit request; ask when behavior is
  ambiguous.
- Validate boundaries, keep workflow transitions deterministic, make side effects idempotent and
  source-of-truth-backed.
- Unit tests are not enough: prove behavior at the real destination (end-to-end run, live smoke check, command
  output); record exact blockers when proof cannot be produced.
- Keep prompts and docs harness-agnostic: write "the agent" or "the harness".

## Response Guidelines

- Concise, direct, plain English; lead with the result. Lists of three or more get stable codes (F1, D1, Q1).
- Do not give more than needed; offer detail when it is optional.
- Keep answers easy to scan; pair long explanations with a table or diagram.
