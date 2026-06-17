<a name="readme-top"></a>

<div align="center">
  
  # 👾 OP_INJOY 👾 Ultimate Bot Swarm
  
  **An advanced, hybrid, and dynamic Minecraft bot swarm deployment tool.**<br>
  It supports both Java and Bedrock editions simultaneously with automated Anti-AFK routines and smart scheduling.
  
  [![Node.js](https://img.shields.io/badge/Node.js-v22-339933?style=for-the-badge&logo=nodedotjs&logoColor=white&labelColor=1A1B26)](#)

  [![Termux](https://img.shields.io/badge/Termux-Supported-00C853?style=for-the-badge&logo=android&logoColor=white&labelColor=1A1B26)](#)
  [![Linux](https://img.shields.io/badge/Linux-Supported-F5A900?style=for-the-badge&logo=linux&logoColor=white&labelColor=1A1B26)](#)
  [![Windows OS](https://img.shields.io/badge/⊞_Windows_OS-Supported-0078D6?style=for-the-badge&logoColor=white&labelColor=1A1B26)](#)

</div>

---

## 🌐 About The Project

There are many bot scripts out there, but few are truly customizable and hybrid. **OP_INJOY** is a fully-fledged bot swarm tool that runs effortlessly on Android (Termux), Linux Servers (Debian/Ubuntu), and Windows. It features intelligent delay joining, automated authorization fallback routines, and proactive anti-kick structures.

### Key Enhancements:
* **Hybrid Connectivity**: Run Java and Bedrock bots simultaneously.
* **Smart Throttling**: 6-second sequential join delay to bypass rigid server-side anti-cheat configurations.
* **Integrated Anti-AFK**: Continuous physical updates (sneaking & head movement) prevent server idle kicks.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ⚡ Getting Started (One-Click Installations)

Select your terminal, copy the command, paste, and press Enter. Everything is fully automated.

### 🐧 1. Linux Setup (Standard User)
```bash
sudo apt update -y && sudo apt upgrade -y && curl -fsSL [https://deb.nodesource.com/setup_22.x](https://deb.nodesource.com/setup_22.x) | sudo -E bash - && sudo apt install -y nodejs build-essential cmake && npm init -y && npm install mineflayer bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && sudo printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" > /usr/local/bin/bots && sudo chmod +x /usr/local/bin/bots && clear && echo "✅ INSTALLATION COMPLETE!" && echo "🎮 Type 'bots' to launch your swarm!"
```

### 👑 2. Linux Setup (Root/Admin User)
```bash
apt update -y && apt upgrade -y && curl -fsSL [https://deb.nodesource.com/setup_22.x](https://deb.nodesource.com/setup_22.x) | bash - && apt install -y nodejs build-essential cmake && npm init -y && npm install mineflayer bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" > /usr/local/bin/bots && chmod +x /usr/local/bin/bots && clear && echo "✅ INSTALLATION COMPLETE!" && echo "🎮 Type 'bots' to launch your swarm!"
```

### 📱 3. Termux Setup (Android)
```bash
pkg update -y && pkg upgrade -y && pkg install nodejs curl -y && rm -rf node_modules package-lock.json bots.js && npm init -y && npm cache clean --force && npm install mineflayer bedrock-protocol --ignore-scripts --no-audit --no-fund && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" > $PREFIX/bin/bots && chmod +x $PREFIX/bin/bots && clear && echo "✅ ULTRA-FAST INSTALLATION COMPLETE! 🎮 Type 'bots' to launch your swarm!"
```

### 🪟 4. Windows Setup (PowerShell Admin)
> **IMPORTANT: ⚠️ OPEN POWERSHELL AS ADMINISTRATOR! ⚠️**
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; if (!(Get-Command node -ErrorAction SilentlyContinue)) { Write-Host "Downloading and Installing Node.js..."; winget install -e --id OpenJS.NodeJS --accept-package-agreements --accept-source-agreements; $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User') }; npm init -y; npm install mineflayer bedrock-protocol; Invoke-WebRequest -Uri "[https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS)" -OutFile "bots.js"; $currentPath = (Get-Location).Path; $batContent = '@echo off' + [Environment]::NewLine + 'cd /d "' + $currentPath + '"' + [Environment]::NewLine + 'node bots.js'; $batContent | Out-File -FilePath "$env:USERPROFILE\bots.bat" -Encoding ascii; [Environment]::SetEnvironmentVariable("Path", $env:Path + ";$env:USERPROFILE", "User"); Write-Host "✅ INSTALLATION COMPLETE!"; Write-Host "Type 'bots.bat' and press Enter to launch your swarm!"
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🎮 Everyday Usage

Once the installer finishes, you never need to copy-paste setup codes again.

**For Linux / Termux:**
```bash
bots
```

**For Windows:**
```cmd
bots.bat
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🗑️ Uninstallation (One-Click Removal)

If you want to completely delete the script, its global shortcuts, and all downloaded project files, run the command for your system:

### 🐧 For Linux (Standard & Root Users):
```bash
sudo rm -f /usr/local/bin/bots && rm -rf bots.js package.json package-lock.json node_modules && clear && echo "🗑️ OP_INJOY Bot Swarm has been completely removed!"
```

### 📱 For Termux (Android):
```bash
rm -f $PREFIX/bin/bots && rm -rf bots.js package.json package-lock.json node_modules && clear && echo "🗑️ OP_INJOY Bot Swarm has been completely removed!"
```

### 🪟 For Windows (PowerShell Admin):
```powershell
Remove-Item -Path "$env:USERPROFILE\bots.bat" -Force -ErrorAction SilentlyContinue; Remove-Item -Path "bots.js", "package.json", "package-lock.json" -Force -ErrorAction SilentlyContinue; Remove-Item -Path "node_modules" -Recurse -Force -ErrorAction SilentlyContinue; Write-Host "🗑️ OP_INJOY Bot Swarm has been completely removed!"
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🔗 Feature Checklist & To-do
- [x] Support for Java Bots
- [x] Support for Bedrock Bots 
- [x] Comprehensive Environment Auto-Installers
- [x] Automatic Server Version Auto-Detection
- [x] Automatic offline server `/register` and `/login` sequences
- [x] Precision Join Throttling (6-second delay loop)
- [x] Unlimited Swarm Mode Deployment Options
- [x] Basic Anti-AFK Routines (Dynamic Sneaking & Look Orientations)
- [ ] Advanced Custom Pathfinding & Complex Movements
- [ ] Configurable Global Chat Spam Module

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 📄 License & Terms of Use

Copyright (c) 2026 OP_INJOY. All Rights Reserved. Proprietary and confidential.

The "OP_INJOY Ultimate Bot Swarm" script and its structural engineering belong entirely to OP_INJOY.

* **✅ YOU MAY:** Use this tool to deploy and manage your bots within private or authorized network boundaries.
* **❌ YOU MAY NOT:** Copy, modify, edit, distribute, or sub-license this software source code without direct, explicit written permission from OP_INJOY. 

Modifying source files to circumvent developer locks, stripping credit signatures, or re-uploading altered distributions while asserting ownership is strictly prohibited.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ❤️ Support This Project

If you find this deployment tool useful, please consider giving it a 💫 **Star** at the top of the repository! Community recognition drives active development.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🔗 Contact & Acknowledgments

* **Creator & Lead Developer:** OP_INJOY
* **Powered by:** Opinjoy

<p align="right">(<a href="#readme-top">back to top</a>)</p>
