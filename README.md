<a name="readme-top"></a>

<div align="center">
  
  # 👾 OP_INJOY Ultimate Bot Swarm 👾
  
  **An advanced, hybrid, and dynamic Minecraft bot swarm deployment tool.**<br>
  It supports both Java and Bedrock editions simultaneously.
  
  [![Node.js](https://img.shields.io/badge/Node.js-v22-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)](#)
  [![Termux](https://img.shields.io/badge/Termux-Supported-000000?style=for-the-badge&logo=termux&logoColor=white)](#)
  [![Linux](https://img.shields.io/badge/Linux-Supported-FCC624?style=for-the-badge&logo=linux&logoColor=black)](#)
  [![Windows](https://img.shields.io/badge/Windows-Supported-0078D6?style=for-the-badge&logo=windows&logoColor=white)](#)

</div>

---

## 🌐 About The Project

There are many bot scripts out there, but few are truly customizable and hybrid. **OP_INJOY** is a fully-fledged bot swarm tool that runs effortlessly on Android (Termux), Linux Servers (Debian/Ubuntu), and Windows. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ⚡ Getting Started (One-Click Installations)

Select your terminal, copy the command, paste, and press Enter.

### 🐧 1. Linux Setup (Standard User)
```bash
sudo apt update -y && sudo apt upgrade -y && curl -fsSL [https://deb.nodesource.com/setup_22.x](https://deb.nodesource.com/setup_22.x) | sudo -E bash - && sudo apt install -y nodejs build-essential cmake && npm init -y && npm install mineflayer bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && sudo printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" > /usr/local/bin/bots && sudo chmod +x /usr/local/bin/bots && clear && echo "✅ INSTALLATION COMPLETE!" && echo "🎮 Type 'bots' to launch your swarm!"
```

### 👑 2. Linux Setup (Root/Admin User)
```bash
apt update -y && apt upgrade -y && curl -fsSL [https://deb.nodesource.com/setup_22.x](https://deb.nodesource.com/setup_22.x) | bash - && apt install -y nodejs build-essential cmake && npm init -y && npm install mineflayer bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && sudo printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" > /usr/local/bin/bots && chmod +x /usr/local/bin/bots && clear && echo "✅ INSTALLATION COMPLETE!" && echo "🎮 Type 'bots' to launch your swarm!"
```

### 📱 3. Termux Setup (Android)
```bash
pkg update -y && pkg upgrade -y && pkg install nodejs python make clang cmake curl -y && npm init -y && npm install mineflayer bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" > $PREFIX/bin/bots && chmod +x $PREFIX/bin/bots && clear && echo "✅ INSTALLATION COMPLETE!" && echo "🎮 Type 'bots' to launch your swarm!"
```

### 🪟 4. Windows Setup (PowerShell Admin)
> **IMPORTANT : ⚠️ OPEN POWERSHELL AS ADMINISTRATOR! ⚠️**
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; if (!(Get-Command node -ErrorAction SilentlyContinue)) { Write-Host "Downloading and Installing Node.js..."; winget install -e --id OpenJS.NodeJS --accept-package-agreements --accept-source-agreements; $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User') }; npm init -y; npm install mineflayer bedrock-protocol; Invoke-WebRequest -Uri "[https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS)" -OutFile "bots.js"; $currentPath = (Get-Location).Path; $batContent = "@echo off`ncd /d `"$currentPath`"`nnode bots.js"; $batContent | Out-File -FilePath "$env:USERPROFILE\bots.bat" -Encoding ascii; [Environment]::SetEnvironmentVariable("Path", $env:Path + ";$env:USERPROFILE", "User"); Write-Host "INSTALLATION COMPLETE!"; Write-Host "Type 'bots.bat' and press Enter to launch your swarm!"
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

### 🎮 Everyday Usage

Once the installer finishes, you never need to copy-paste setup codes again.

**For Linux / Termux:**
```bash
bots
```

**For Windows:**
```bash
bots.bat
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

### 🔗 To-do
- [x] Support for Java Bots
- [x] Support for Bedrock Bots
- [x] Auto-Installer for Termux, Linux, and Windows
- [x] Automatic `/login` and `/register` for offline servers
- [ ] Add Custom Bot Movements (Coming Soon)
- [ ] Add Chat Spam Feature (Coming Soon)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 📄 License & Terms of Use

Copyright (c) 2026 OP_INJOY. All Rights Reserved.

The "OP_INJOY Ultimate Bot Swarm" script and its code belong entirely to OP_INJOY.

* **✅ YOU MAY:** Use this tool to deploy and manage your bots.
* **❌ YOU MAY NOT:** Copy, modify, edit, or distribute this code without direct, written permission from OP_INJOY. 

Changing the source code to bypass the creator's locks, removing credits, or re-uploading modified versions claiming ownership is strictly prohibited.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ❤️ Support This Project

If you find this deployment tool useful, please consider giving it a 💫 **Star** at the top of the repository! Community support drives active development.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🔗 Contact & Acknowledgments

* **Creator & Lead Developer:** OP_INJOY
* **Powered by:** Opinjoy

<p align="right">(<a href="#readme-top">back to top</a>)</p>
