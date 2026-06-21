#!/bin/bash
# ========================================================================
# 🕷️ OP_INJOY Ultimate Spider Bot Installer (Hinglish Version)
# Supports: Android (Termux), Windows (Git Bash/MSYS), and Linux
# ========================================================================

echo "🕷️ OP_INJOY Ultimate Spider Bot ka setup start ho raha hai..."

OS_TYPE="$(uname -s)"

if [[ "$OS_TYPE" == *"MINGW"* ]] || [[ "$OS_TYPE" == *"MSYS"* ]] || [[ "$OS_TYPE" == *"CYGWIN"* ]]; then
    echo "🪟 Windows OS detect hua!"
    echo "⚙️ PowerShell ke zariye auto-install start kar rahe hain..."
    
    cat << 'EOF' > temp_install.ps1
    Set-ExecutionPolicy Bypass -Scope Process -Force
    if (!(Get-Command node -ErrorAction SilentlyContinue)) {
        Write-Host "Node.js download aur install ho raha hai..."
        winget install -e --id OpenJS.NodeJS --accept-package-agreements --accept-source-agreements
        $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User')
    }
    npm init -y
    npm install mineflayer bedrock-protocol --ignore-scripts
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS" -OutFile "bots.js"
    $currentPath = (Get-Location).Path
    $batContent = '@echo off' + [Environment]::NewLine + 'cd /d "' + $currentPath + '"' + [Environment]::NewLine + 'node bots.js'
    $batContent | Out-File -FilePath "$env:USERPROFILE\bots.bat" -Encoding ascii
    [Environment]::SetEnvironmentVariable("Path", $env:Path + ";$env:USERPROFILE", "User")
    clear
    Write-Host "========================================="
    Write-Host "✅ WINDOWS INSTALLATION POORI HO GAYI HAI!"
    Write-Host "🎮 Naya CMD ya PowerShell kholo aur 'bots.bat' likh kar Enter dabao!"
    Write-Host "========================================="
EOF

    powershell.exe -NoProfile -ExecutionPolicy Bypass -File temp_install.ps1
    rm -f temp_install.ps1
    exit 0

elif [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "📱 Termux (Android) detect hua!"
    TARGET_DIR="$HOME/OP_INJOY_SWARM"
    
    rm -rf "$TARGET_DIR" 2>/dev/null
    mkdir -p "$TARGET_DIR"
    cd "$TARGET_DIR" || { echo "❌ ERROR: $TARGET_DIR nahi khul raha"; exit 1; }

    echo "⚙️ Termux packages update ho rahe hain aur dependencies install ho rahi hain..."
    termux-setup-storage
    pkg update -y
    pkg cache-clean
    pkg install nodejs curl wget git -y

else
    echo "🐧 Linux Environment detect hua!"
    if [ "$EUID" -ne 0 ]; then
        echo "❌ Permission Denied: Is script ko root (sudo) access chahiye."
        echo "💡 Aise run karo: sudo bash install.sh"
        exit 1
    fi
    TARGET_DIR="$HOME/OP_INJOY_SWARM"
    
    rm -rf "$TARGET_DIR" 2>/dev/null
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
echo "✅ INSTALLATION SUCCESSFUL! MUBARAK HO!"
echo "🎮 Kahi bhi terminal mein type karo: bots"
echo "========================================="
