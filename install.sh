#!/usr/bin/env bash
set -euo pipefail

target="${1:-both}"
root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skill_source="$root/skills/pastself"

if [[ "$target" == "codex" || "$target" == "both" ]]; then
  codex_dest="$HOME/.codex/skills/pastself"
  mkdir -p "$(dirname "$codex_dest")"
  rm -rf "$codex_dest"
  cp -R "$skill_source" "$codex_dest"
  echo "Installed PastSelf for Codex: $codex_dest"
fi

if [[ "$target" == "claude" || "$target" == "both" ]]; then
  claude_dest="$HOME/.claude/skills/pastself"
  mkdir -p "$(dirname "$claude_dest")"
  rm -rf "$claude_dest"
  cp -R "$skill_source" "$claude_dest"
  echo "Installed PastSelf for Claude Code: $claude_dest"
fi
