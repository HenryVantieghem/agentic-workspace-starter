# Stage 3b: Choose Business Sections

A section is one area of the user's work with its own folder, instructions and memory:
`workspace-<name>/` holding `AGENTS.md`, `MEMORY.md`, `SOUL.md` and dated `memory/` notes.
The main section `workspace/` always exists.

## Ask once

Offer this list and let the user pick, rename or add their own:

```text
clients    client delivery: engagements, contacts, open loops
sales      pipeline, proposals, pricing, outreach
course     curriculum, students, launches
creative   content: social, video, newsletter, brand assets
coding     agents, automations, products
admin      finances, invoices, legal, travel
```

## Create

For each chosen section, run from the workspace root:

```bash
scripts/new-section.sh <name> "<one-line purpose>"
```

The script refuses to overwrite an existing folder. It adds the section line between the
`sections:start` and `sections:end` markers in `AGENTS.md` and appends a log entry.

Then fill `shared-memory/OVERVIEW.md` from confirmed answers only: what the business sells, its sections, voice
rules and hard rules. Use `UNKNOWN` for anything not confirmed. Keep it under one page.

Return the list of sections created.
