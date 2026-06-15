#!/bin/bash
# ==========================================
# OP_INJOY Ultimate Bot Swarm Installer
# ==========================================

echo "👾 Initializing OP_INJOY Bot Swarm Setup..."

# 1. Privilege Validation & Environment Detection
if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "📱 Android Termux Environment Detected (Root not required)!"
    TARGET_DIR="$HOME/op-injoy-bot"
else
    echo "🐧 Standard Linux Environment Detected!"
    # Check if the session has root access
    if [ "$EUID" -ne 0 ]; then
        echo "❌ Permission Denied: This script must be run with root privileges."
        echo "💡 Please use: sudo bash install.sh"
        exit 1
    fi
    TARGET_DIR="$HOME/op-injoy-bot"
fi

# Set up project destination paths safely
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR" || exit 1
echo "📂 Isolated project directory verified at: $TARGET_DIR"

# 2. Package Provisioning
if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    apt update && apt install nodejs python make clang cmake curl wget git -y
else
    export DEBIAN_FRONTEND=noninteractive
    if ! command -v node >/dev/null 2>&1; then
        echo "📦 Node.js not found. Deploying Node.js v22 via verified NodeSource Keyring..."
        apt-get update -y
        apt-get install -y ca-certificates curl gnupg build-essential cmake git
        mkdir -p /etc/apt/keyrings
        curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
        echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
        apt-get update -y
        apt-get install nodejs -y
    else
        echo "✅ Node.js runtime environment already present ($(node -v))."
    fi
fi

# 3. Project Re-indexing & Node Package Compilation
echo "⚙️ Configuring local project files & npm packages..."
rm -f package.json package-lock.json
npm init -y > /dev/null

echo "📥 Syncing mineflayer, minecraft-data, and bedrock-protocol modules..."
npm install mineflayer@latest minecraft-data@latest bedrock-protocol --no-audit --no-fund --unsafe-perm

# 4. Fetching Your Bot Script
echo "📥 Downloading the bot engine..."
curl -fsSL "https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS" -o bots.js

# 5. Success Launch
echo "🚀 Environment verified! Launching interactive panels..."
node bots.js
