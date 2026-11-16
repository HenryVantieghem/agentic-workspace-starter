# Memory Storage Policy

The routing contract: what goes where, and which store wins.

| Kind of information | Home | Wins over |
|---|---|---|
| Who the user is, how they work, approval boundaries | `USER.md` | everything |
| Business context, voice, hard rules | `shared-memory/OVERVIEW.md` | wiki summaries |
| Durable facts, people, clients, decisions | `wiki/pages/` | section memory |
| Curated facts for one section | `workspace-*/MEMORY.md` | dated notes |
| What happened in a session | `workspace-*/memory/YYYY-MM-DD.md` | nothing (history) |
| Current code and behavior | the project's own repo | the wiki |
| Unverified material | `wiki/inbox.md` | nothing |
| Harness-local memory (Hermes `memories/`, Claude Code auto memory) | that harness only | nothing: promote to the wiki |

Rule: anything another harness should know must end up in this repo, not only in one harness's private memory.
