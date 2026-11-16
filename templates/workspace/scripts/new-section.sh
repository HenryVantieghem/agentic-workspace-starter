#!/usr/bin/env bash
# Add a business section: scripts/new-section.sh <name> "<purpose>"
set -euo pipefail
cd "$(dirname "$0")/.."
name="${1:?usage: new-section.sh <name> \"<purpose>\"}"; purpose="${2:?purpose required}"
[[ "$name" =~ ^[a-z0-9-]+$ ]] || { echo "name must be kebab-case" >&2; exit 1; }
dir="workspace-$name"; [[ -e "$dir" ]] && { echo "$dir already exists" >&2; exit 1; }
grep -q '<!-- sections:end -->' AGENTS.md || { echo "AGENTS.md has no sections markers" >&2; exit 1; }
today=$(date +%F); title="$(tr '[:lower:]' '[:upper:]' <<<"${name:0:1}")${name:1}"
mkdir -p "$dir/memory"
cat > "$dir/AGENTS.md" <<EOF
# $title section

This folder holds $purpose. Root \`AGENTS.md\` rules apply; this file only adds what is specific here.

- Read \`MEMORY.md\` here first, then the newest file in \`memory/\`.
- Write a 2 to 5 line summary to \`memory/YYYY-MM-DD.md\` when a session here wraps up.
EOF
printf '# %s memory\n\nCurated, long-lived facts for %s. Dated session notes go in `memory/`.\n**Last updated:** %s\n\nNo curated facts yet.\n' "$title" "$purpose" "$today" > "$dir/MEMORY.md"
printf "# %s agent\n\nYou are the user's %s agent. You care about %s.\nBe direct and brief. Lead with the result, then the proof.\n" "$title" "$name" "$purpose" > "$dir/SOUL.md"
printf '# %s\n\n- Section created.\n' "$today" > "$dir/memory/$today.md"
line="   - \`$dir/MEMORY.md\`: $purpose."
awk -v l="$line" '/<!-- sections:end -->/{print l} {print}' AGENTS.md > AGENTS.md.tmp && mv AGENTS.md.tmp AGENTS.md
printf '\n## [%s] section | %s\nAdded `%s/`: %s.\n' "$today" "$dir" "$dir" "$purpose" >> wiki/log.md
echo "created $dir and registered it in AGENTS.md"
