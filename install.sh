#!/bin/bash

# PRD Interrogate Skill Installer
# Installs the prd-interrogate skill to Claude Code

set -e

SKILL_NAME="prd-interrogate"
INSTALL_DIR="$HOME/.claude/skills/$SKILL_NAME"
REPO_URL="https://raw.githubusercontent.com/YOUR_USERNAME/prd-interrogate-skills/main"

echo "🔍 Installing $SKILL_NAME skill..."
echo ""

# Create directory
echo "📁 Creating skill directory..."
mkdir -p "$INSTALL_DIR"

# Download skill file
echo "⬇️  Downloading SKILL.md..."
curl -fsSL "$REPO_URL/skills/$SKILL_NAME/SKILL.md" -o "$INSTALL_DIR/SKILL.md"

if [ $? -eq 0 ]; then
    echo "✅ Skill installed successfully!"
    echo ""
    echo "📍 Location: $INSTALL_DIR/SKILL.md"
    echo ""
    echo "📝 Usage:"
    echo "   /prd-interrogate"
    echo "   prd mode"
    echo "   interrogate my requirements"
    echo ""
    echo "⚠️  Please restart Claude Code to load the new skill."
else
    echo "❌ Installation failed. Please check your internet connection."
    exit 1
fi
