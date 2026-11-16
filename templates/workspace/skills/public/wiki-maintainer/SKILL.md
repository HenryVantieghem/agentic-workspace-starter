---
name: wiki-maintainer
description: Ingest sources from wiki/raw, file answers back into the wiki, and lint it for contradictions, stale claims and orphans. Use when the user says "remember this", "put it in the wiki", "ingest raw", or "lint the wiki".
---

# Wiki maintainer

Follow `wiki/SCHEMA.md`. For each change: edit the narrowest page (cite the source), add or update its line in
`wiki/index.md`, append `## [YYYY-MM-DD] action | title` to `wiki/log.md`. Never rewrite files in `wiki/raw/`.
Show the diff before committing.
