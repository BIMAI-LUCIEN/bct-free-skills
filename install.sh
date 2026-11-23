#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
for TARGET in "$HOME/.claude/skills" "$HOME/.agents/skills" "$HOME/.gemini/config/skills"; do
  mkdir -p "$TARGET"
  cp -R "$SCRIPT_DIR/skills/"* "$TARGET/"
  echo "Skills BCT installés dans $TARGET"
done
