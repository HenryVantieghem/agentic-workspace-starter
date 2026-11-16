# Agentic Workspace Starter

**One memory workspace for your whole business, shared by every AI agent you use.**
By [Agentic Engineering Consulting](https://agenticengineeringconsulting.com) (Henry Vantieghem). Built on Duke Pan's
MIT-licensed [ai-memory-workspace-starter](https://github.com/Fryingpannn/ai-memory-workspace-starter) and
Andrej Karpathy's [LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) idea.

Your agent (Claude Code, Codex, Hermes, OpenClaw...) forgets everything between sessions. This starter gives every
harness the same files to read first and write back to, so each session starts where the last one stopped.

## Paste this into your agent

```text
Set up my AI memory workspace from this repository:
https://github.com/HenryVantieghem/agentic-workspace-starter

Start with SETUP.md. Use this repository only as temporary setup instructions and a
template source; do not turn its clone into my workspace.
```

The agent asks a few questions, builds the workspace in your own folder, proves it works with a fresh-session test,
then deletes its temporary copy of this repo.

## What you end up with

```text
your-workspace/
├── AGENTS.md            ← operating manual every harness reads first (CLAUDE.md just points here)
├── USER.md              ← who you are and how you like to work (under 100 lines)
├── shared-memory/OVERVIEW.md  ← your business on one page: offers, voice, hard rules
├── workspace/           ← main section: AGENTS.md, MEMORY.md, SOUL.md, memory/YYYY-MM-DD.md
├── workspace-clients/   ← one folder per business section you choose
├── workspace-course/    ←   (clients, sales, course, content, coding, admin, anything)
├── wiki/                ← long-term memory: index, SCHEMA, log, inbox, raw/, pages/
├── projects/            ← registry of your code repos
├── skills/public/       ← reusable procedures (new-section, wiki-maintainer, session-writeback)
└── scripts/new-section.sh   ← add a section any time
```

## How memory flows

| Step | Where |
|---|---|
| Read first | `AGENTS.md` → `USER.md` + `shared-memory/OVERVIEW.md` → the section's `MEMORY.md` → `wiki/index.md` |
| During work | only the pages the task needs |
| Write back | 2 to 5 lines in `<section>/memory/YYYY-MM-DD.md`; durable facts to the wiki; commit and push |

## Add a section later

```bash
scripts/new-section.sh partners "partner and referral deals"
```

It creates `workspace-partners/` with its own instructions and memory and adds it to the routing in `AGENTS.md`.

## Example

`examples/henry-vantieghem-AGENTS.md` is the real `AGENTS.md` behind Agentic Engineering Consulting.
`docs/agents-md-handout.pdf` walks through it line by line.

## License

MIT. Original setup flow and templates by Duke Pan; business sections, skills, scripts and the always-on agent
stage by Henry Vantieghem.
