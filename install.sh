#!/usr/bin/env bash
set -euo pipefail

target="${1:-both}"
root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skill_source="$root/skills/ai-historical-persona-skill"

if [[ "$target" == "codex" || "$target" == "both" ]]; then
  codex_dest="$HOME/.codex/skills/ai-historical-persona-skill"
  mkdir -p "$(dirname "$codex_dest")"
  rm -rf "$codex_dest"
  cp -R "$skill_source" "$codex_dest"
  echo "Installed AI Historical Persona Skill for Codex: $codex_dest"
fi

if [[ "$target" == "claude" || "$target" == "both" ]]; then
  claude_dest="$HOME/.claude/skills/ai-historical-persona-skill"
  mkdir -p "$(dirname "$claude_dest")"
  rm -rf "$claude_dest"
  cp -R "$skill_source" "$claude_dest"
  echo "Installed AI Historical Persona Skill for Claude Code: $claude_dest"
fi
