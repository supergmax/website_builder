#!/usr/bin/env bash
#
# Installs the professional-web-builder Claude Code skill.
#
# Usage:
#   ./install.sh                 # install globally to ~/.claude/skills
#   ./install.sh /path/to/project  # install into a project's .claude/skills
#
set -euo pipefail

SKILL_NAME="professional-web-builder"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="$SCRIPT_DIR/skills/$SKILL_NAME"

if [ ! -d "$SOURCE" ]; then
  echo "Error: skill source not found at $SOURCE. Run this from the repo root." >&2
  exit 1
fi

if [ "${1:-}" != "" ]; then
  TARGET="$1/.claude/skills"
else
  TARGET="$HOME/.claude/skills"
fi

mkdir -p "$TARGET"
DEST="$TARGET/$SKILL_NAME"

if [ -d "$DEST" ]; then
  echo "Replacing existing skill at $DEST"
  rm -rf "$DEST"
fi

cp -r "$SOURCE" "$DEST"
echo "Installed '$SKILL_NAME' to $DEST"
echo "Start a new Claude Code session to load the skill."
