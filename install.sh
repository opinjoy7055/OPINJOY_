#!/bin/bash
# ==========================================
# OP_INJOY Ultimate Bot Swarm Installer
# ==========================================

echo "👾 Initializing OP_INJOY Bot Swarm Setup..."

# Set an absolute, safe home pathway to prevent module path losses
TARGET_DIR="$HOME/op-injoy-bot"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR" || exit 1

echo "📂 Isolated project directory created at: $TARGET_DIR"

# 1. Environment Detection & Runtime Provisioning
if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "📱 Android Termux Environment Detected!"
    apt update && apt install nodejs python make clang cmake curl wget git -y
else
    echo "🐧 Standard Linux Environment Detected!"
    export DEBIAN_FRONTEND=noninteractive
    
    S=""
    command -v sudo >/dev/null 2>&1 && S="sudo"
    
    if ! command -v node >/dev/null 2>&1; then
        echo "📦 Node.js not found. Installing runtime packages..."
        $S apt-get update -y
        $S apt-get install -y curl wget git build-essential cmake
        curl -fsSL "https://deb.nodesource.com/setup_22.x" | $S -E bash -
        $S apt-get install -y nodejs
    else
        echo "✅ Node.js already present ($(node -v)). Skipping environment provisioning."
    fi
fi

# 2. Package Compilation & Dependencies Setup
echo "⚙️ Re-indexing local project packages..."
rm -f package.json package-lock.json
npm init -y > /dev/null

echo "📥 Compiling mineflayer, minecraft-data, and bedrock-protocol..."
npm install mineflayer@latest minecraft-data@latest bedrock-protocol --no-audit --no-fund

# 3. Fetching Your Bot Script
echo "📥 Syncing bot core engine..."
curl -fsSL "https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS" -o bots.js

# 4. Success Launch
echo "🚀 Environment verified! Launching panels..."
node bots.js
