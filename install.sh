#!/bin/bash
# ==========================================
# OP_INJOY Ultimate Bot Swarm Installer
# ==========================================

echo "👾 Initializing OP_INJOY Bot Swarm Setup..."

# Create project directory and enter it
mkdir -p op-injoy-bot && cd op-injoy-bot

# 1. Environment Detection (Termux vs Standard Linux)
if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "📱 Android Termux Environment Detected!"
    apt update && apt install nodejs python make clang cmake curl wget git -y
else
    echo "🐧 Standard Linux Environment Detected!"
    export DEBIAN_FRONTEND=noninteractive
    
    # Check for sudo access
    S=""
    command -v sudo >/dev/null 2>&1 && S="sudo"
    
    # Install Node.js if it's missing
    if ! command -v node >/dev/null 2>&1; then
        echo "📦 Node.js not found. Installing runtime packages..."
        $S apt-get update -y
        $S apt-get install -y curl wget git build-essential cmake
        curl -fsSL "https://deb.nodesource.com/setup_22.x" | $S -E bash -
        $S apt-get install -y nodejs
    fi
fi

# 2. Package Compilation & Dependencies Setup
echo "⚙️ Configuring local project files & npm packages..."
npm init -y
npm install mineflayer@latest minecraft-data@latest bedrock-protocol

# 3. Fetching Your Bot Script
echo "📥 Downloading the bot engine..."
curl -fsSL "https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS" -o bots.js

# 4. Success Launch
echo "🚀 Setup completely successful! Launching panels..."
node bots.js
