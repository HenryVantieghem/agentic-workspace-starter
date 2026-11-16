# Optional: Connect an Always-On Agent

Use when the user runs a 24/7 agent (Hermes Agent, OpenClaw) on a machine such as a Mac mini or a server.

1. Clone the workspace repository onto that machine (never copy the folder by hand).
2. Point the agent's working directory at the workspace root so it loads `AGENTS.md`:
   - Hermes Agent: `hermes config set terminal.cwd <workspace path>`, then `hermes gateway restart`.
     Hermes loads `.hermes.md`, then `AGENTS.md`, then `CLAUDE.md` (first match wins) plus nested files as it
     moves into folders. Start a new chat to pick up edits.
   - OpenClaw: set `agents.defaults.workspace` to the workspace root.
3. Give that machine push access so its write-backs reach the other machines (`gh auth login`, then a
   repository-local credential helper).
4. Agents keep their own private memory stores. Anything another harness should know must be promoted into the
   workspace (`wiki/pages/memory-storage-policy.md`).
5. Prove it: from the agent's chat, ask "What are my sections and where do you write session notes?" It must
   answer from `AGENTS.md`.

Ask before installing anything, changing the agent's config, or restarting its service.
