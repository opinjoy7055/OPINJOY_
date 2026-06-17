#!/bin/bash
# ========================================================================
# OP_INJOY Ultimate Universal Bot Swarm Installer (CROSS-PLATFORM ULTRA-FAST)
# Supports: Android (Termux), Windows (Git Bash/MSYS), and Linux (Debian/Ubuntu)
# ========================================================================

echo "👾 Initializing OP_INJOY Bot Swarm Universal Setup..."

# 1. Detect Environment
OS_TYPE="$(uname -s)"

if [[ "$OS_TYPE" == *"MINGW"* ]] || [[ "$OS_TYPE" == *"MSYS"* ]] || [[ "$OS_TYPE" == *"CYGWIN"* ]]; then
    echo "🪟 Windows (Git Bash/MSYS) Environment Detected!"
    echo "⚙️ Launching automated Windows deployment via PowerShell..."
    
    # Write clean PowerShell commands to a temporary file to completely bypass bash escaping issues
    cat << 'EOF' > temp_install.ps1
    Set-ExecutionPolicy Bypass -Scope Process -Force
    if (!(Get-Command node -ErrorAction SilentlyContinue)) {
        Write-Host "Downloading and Installing Node.js..."
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
    Write-Host "✅ WINDOWS INSTALLATION SUCCESSFUL!"
    Write-Host "🎮 Close this terminal, open a new CMD/PowerShell, type 'bots.bat' and press Enter!"
    Write-Host "========================================="
EOF

    powershell.exe -NoProfile -ExecutionPolicy Bypass -File temp_install.ps1
    rm -f temp_install.ps1
    exit 0

elif [ -d "$PREFIX/bin" ] && command -v pkg >/dev/null 2>&1; then
    echo "📱 Termux Environment Detected!"
    TARGET_DIR="$HOME/OP_INJOY_SWARM"
    
    rm -rf "$TARGET_DIR" 2>/dev/null
    mkdir -p "$TARGET_DIR"
    cd "$TARGET_DIR" || { echo "❌ FATAL ERROR: Cannot access $TARGET_DIR"; exit 1; }

    echo "⚙️ Force-updating Termux repositories & fixing dependencies..."
    termux-setup-storage
    pkg update -y
    pkg cache-clean
    pkg install nodejs curl wget git -y

else
    echo "🐧 Standard Linux Environment Detected!"
    if [ "$EUID" -ne 0 ]; then
        echo "❌ Permission Denied: This script must be run with root privileges."
        echo "💡 Please use: sudo bash install.sh"
        exit 1
    fi
    TARGET_DIR="$HOME/OP_INJOY_SWARM"
    
    rm -rf "$TARGET_DIR" 2>/dev/null
    mkdir -p "$TARGET_DIR"
    cd "$TARGET_DIR" || { echo "❌ FATAL ERROR: Cannot access $TARGET_DIR"; exit 1; }

    export DEBIAN_FRONTEND=noninteractive
    echo "⚙️ Force-updating Linux core packages..."
    apt-get update -y
    apt-get install -y ca-certificates curl gnupg build-essential cmake git
    
    rm -f /etc/apt/keyrings/nodesource.gpg /etc/apt/sources.list.d/nodesource.list
    mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
    
    apt-get update -y
    apt-get install nodejs -y
fi

# This core section executes cleanly for Termux and Standard Linux Environments
echo "⚙️ Forcing clean package initialization..."
npm init -y > /dev/null

echo "📥 Brute-forcing ULTRA-FAST installation of mineflayer and bedrock-protocol..."
npm install mineflayer@latest minecraft-data@latest bedrock-protocol --ignore-scripts --no-audit --no-fund --force

echo "📥 Fetching Your Bot Script..."
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
echo "✅ ULTRA-FAST INSTALLATION SUCCESSFUL!"
echo "🎮 Run the program anywhere by typing: bots"
echo "========================================="
