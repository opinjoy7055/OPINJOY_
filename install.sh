#!/bin/bash
# ========================================================================
# 🕷️ OP_INJOY Ultimate Spider Bot Installer & Smart Auto-Updater
# ========================================================================

echo "🕷️ OP_INJOY Ultimate Spider Bot system initialize ho raha hai..."

OS_TYPE="$(uname -s)"

if [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "📱 Termux (Android) detect hua!"
    TARGET_DIR="$HOME/OP_INJOY_SWARM"
    
    # --- SMART UPDATE LOGIC ---
    if [ -f "$TARGET_DIR/bots.js" ]; then
        echo "🔄 FAST UPDATE MODE: Purani script detect hui!"
        echo "📥 Latest script fetch karke purani file ko replace kar rahe hain..."
        curl -fsSL https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS -o "$TARGET_DIR/bots.js"
        echo "✅ UPDATE SUCCESSFUL! Tumhari script latest version se replace ho gayi hai."
        echo "🎮 Run karne ke liye type karo: bots"
        exit 0
    fi
    # --------------------------

    mkdir -p "$TARGET_DIR"
    cd "$TARGET_DIR" || { echo "❌ ERROR: $TARGET_DIR nahi khul raha"; exit 1; }

    echo "⚙️ Termux packages update ho rahe hain aur dependencies install ho rahi hain..."
    termux-setup-storage
    pkg update -y
    pkg cache-clean
    pkg install nodejs curl wget git -y

else
    echo "🐧 Linux Environment detect hua!"
    TARGET_DIR="$HOME/OP_INJOY_SWARM"
    
    # --- SMART UPDATE LOGIC ---
    if [ -f "$TARGET_DIR/bots.js" ]; then
        echo "🔄 FAST UPDATE MODE: Purani script detect hui!"
        echo "📥 Latest script fetch karke purani file ko replace kar rahe hain..."
        curl -fsSL https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS -o "$TARGET_DIR/bots.js"
        echo "✅ UPDATE SUCCESSFUL! Tumhari script latest version se replace ho gayi hai."
        echo "🎮 Run karne ke liye type karo: bots"
        exit 0
    fi
    # --------------------------

    if [ "$EUID" -ne 0 ]; then
        echo "❌ Permission Denied: Is script ko root (sudo) access chahiye."
        echo "💡 Aise run karo: sudo bash install.sh"
        exit 1
    fi
    
    mkdir -p "$TARGET_DIR"
    cd "$TARGET_DIR" || { echo "❌ ERROR: $TARGET_DIR nahi khul raha"; exit 1; }

    export DEBIAN_FRONTEND=noninteractive
    echo "⚙️ Linux packages update ho rahe hain..."
    apt-get update -y
    apt-get install -y ca-certificates curl gnupg build-essential cmake git
    
    rm -f /etc/apt/keyrings/nodesource.gpg /etc/apt/sources.list.d/nodesource.list
    mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
    
    apt-get update -y
    apt-get install nodejs -y
fi

echo "⚙️ NPM initialize ho raha hai..."
npm init -y > /dev/null

echo "📥 Mineflayer aur bedrock-protocol install ho rahe hain (Ultra-Fast Mode)..."
npm install mineflayer@latest minecraft-data@latest bedrock-protocol --ignore-scripts --no-audit --no-fund --force

echo "📥 Tumhari Spider Bot script download ho rahi hai..."
curl -fsSL https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS -o bots.js

if [ -d "$PREFIX/bin" ]; then
    printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$TARGET_DIR" > $PREFIX/bin/bots
    chmod +x $PREFIX/bin/bots
else
    printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$TARGET_DIR" > /usr/local/bin/bots
    chmod +x /usr/local/bin/bots
fi

clear
echo "========================================="
echo "✅ FRESH INSTALLATION SUCCESSFUL! MUBARAK HO!"
echo "🎮 Kahi bhi terminal mein type karo: bots"
echo "========================================="
