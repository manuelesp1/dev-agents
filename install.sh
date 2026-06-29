#!/bin/bash
set -e

REPO="git@github.com:manuelesp1/dev-agents.git"
TMP=$(mktemp -d)
TARGET=".opencode"

echo "dev-agents — instalando agentes de desarrollo en $TARGET/..."

git clone --depth 1 "$REPO" "$TMP" 2>/dev/null

mkdir -p "$TARGET/agents" "$TARGET/templates"

cp "$TMP/persona.md" "$TARGET/persona.md"
cp "$TMP/agents/"*.md "$TARGET/agents/"
cp "$TMP/templates/"*.md "$TARGET/templates/"

rm -rf "$TMP"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ dev-agents instalados en .opencode/"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  13 agentes  ·  2 templates  ·  persona.md"
echo ""
echo "  Para actualizar:"
echo "    git clone --depth 1 $REPO /tmp/da && mkdir -p .opencode && cp -r /tmp/da/{agents,templates,persona.md} .opencode/ && rm -rf /tmp/da"
echo ""
