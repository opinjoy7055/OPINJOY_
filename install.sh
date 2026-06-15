#!/bin/bash
# ==========================================
# OP_INJOY Ultimate Bot Swarm Installer (FORCE MODE)
# ==========================================

echo "👾 Initializing OP_INJOY Bot Swarm Setup (Force Mode)..."

# 1. Environment Detection & New Clean Directory Bypass
if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "📱 Termux Environment Detected!"
    TARGET_DIR="$HOME/OP_INJOY_SWARM" # Changed name to completely bypass the locked folder
else
    echo "🐧 Standard Linux Environment Detected!"
    if [ "$EUID" -ne 0 ]; then
        echo "❌ Permission Denied: This script must be run with root privileges."
        echo "💡 Please use: sudo bash install.sh"
        exit 1
    fi
    TARGET_DIR="$HOME/OP_INJOY_SWARM"
fi

# Forcefully remove the new directory if it somehow exists, then cleanly recreate it
rm -rf "$TARGET_DIR" 2>/dev/null
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR" || { echo "❌ FATAL ERROR: Cannot access $TARGET_DIR"; exit 1; }

echo "📂 Isolated working directory secured at: $TARGET_DIR"

# 2. Brute-Force Package Provisioning
if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "⚙️ Force-updating Termux repositories..."
    pkg update -y
    pkg install nodejs python make clang cmake curl wget git -y
else
    export DEBIAN_FRONTEND=noninteractive
    echo "⚙️ Force-updating Linux core packages..."
    apt-get update -y
    apt-get install -y ca-certificates curl gnupg build-essential cmake git
    
    # Force a clean overwrite of the Node.js keys
    rm -f /etc/apt/keyrings/nodesource.gpg /etc/apt/sources.list.d/nodesource.list
    mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
    
    apt-get update -y
    apt-get install nodejs -y
fi

# 3. Project Initialization & Forced NPM Installs
echo "⚙️ Forcing clean package initialization..."
npm init -y > /dev/null

echo "📥 Brute-forcing installation of mineflayer, minecraft-data, and bedrock-protocol..."
# The --force flag commands NPM to ignore warnings and push the installation through
npm install mineflayer@latest minecraft-data@latest bedrock-protocol --no-audit --no-fund --force

# 4. Fetching Your Bot Script
echo "📥 Syncing ultimate bot engine..."
curl -fsSL "https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS" -o bots.js

# 5. Success Launch
echo "🚀 FORCED DEPLOYMENT SUCCESSFUL! Launching interface..."
node bots.js
