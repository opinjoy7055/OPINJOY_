#!/bin/bash
# ========================================================================
# 🕷️ OP_INJOY Ultimate Spider Bot Uninstaller
# ========================================================================

echo "🧹 OP_INJOY Ultimate Spider Bot ko system se clean kiya jaa raha hai..."

TARGET_DIR="$HOME/OP_INJOY_SWARM"

# Remove global shortcuts
if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    rm -f $PREFIX/bin/bots
else
    sudo rm -f /usr/local/bin/bots 2>/dev/null
fi

# Remove installation directory
rm -rf "$TARGET_DIR" 2>/dev/null

# Fallback for old installations in root directory
rm -f bots.js package.json package-lock.json 2>/dev/null
rm -rf node_modules 2>/dev/null

clear
echo "========================================================="
echo "🗑️ OP_INJOY 🕷️ Ultimate Spider Bot poori tarah delete ho chuka hai!"
echo "========================================================="
