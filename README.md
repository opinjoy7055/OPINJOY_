<a name="readme-top"></a>

<div align="center">

# 👾 OP_INJOY Ultimate Bot Swarm 👾

**An advanced, hybrid, and dynamic Minecraft bot swarm deployment tool.**<br>
Engineered to seamlessly support both Java and Bedrock editions simultaneously with a vibrant, multi-colored terminal interface.

[![Node.js](https://img.shields.io/badge/Node.js-v22-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)](#)
[![Termux](https://img.shields.io/badge/Termux-Supported-000000?style=for-the-badge&logo=termux&logoColor=white)](#)
[![Linux](https://img.shields.io/badge/Linux-Supported-FCC624?style=for-the-badge&logo=linux&logoColor=black)](#)
[![Windows](https://img.shields.io/badge/Windows-Supported-0078D6?style=for-the-badge&logo=windows&logoColor=white)](#)

</div>

---

## 🌐 About The Project

While many Minecraft bot scripts exist, few offer true hybrid functionality and deep customization. **OP_INJOY** is a comprehensive bot swarm deployment tool built to run effortlessly across Android (Termux), Linux, and Windows environments.

It automates the entire provisioning process—handling Node.js runtime installation, dependency compilation, system environment configuration, and dynamic swarm deployment for both Minecraft Java and Bedrock clients. The interactive interface uses high-visibility, native multi-color ANSI palettes to clearly display deployment metrics, warnings, and success logs without demanding external styling packages.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ⚡ Automated Installation

We provide three automated deployment methods. Select the command block corresponding to your operating system, paste it into your terminal, and execute it. The script will automatically provision the required environment and install all dependencies globally.

### 📱 1. Termux Setup (Android)
```bash
pkg update -y && pkg upgrade -y && pkg install nodejs python make clang cmake curl wget git -y && npm init -y && npm install mineflayer@latest minecraft-data@latest bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" > $PREFIX/bin/bots && chmod +x $PREFIX/bin/bots && clear && bots
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 🐧 2. Linux Setup (Ubuntu/Debian)
```bash
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y curl wget git && curl -fsSL [https://deb.nodesource.com/setup_22.x](https://deb.nodesource.com/setup_22.x) | sudo -E bash - && sudo apt install -y nodejs build-essential cmake && npm init -y && npm install mineflayer@latest minecraft-data@latest bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && printf '#!/bin/bash\ncd "%s" && node bots.js\n' "$PWD" | sudo tee /usr/local/bin/bots > /dev/null && sudo chmod +x /usr/local/bin/bots && clear && bots
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 🪟 3. Windows Setup (PowerShell)
> **IMPORTANT: ⚠️ You must execute this command in a PowerShell terminal running as Administrator. ⚠️**
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; if (!(Get-Command node -ErrorAction SilentlyContinue)) { Write-Host "Downloading and Installing Node.js..."; if (Get-Command winget -ErrorAction SilentlyContinue) { winget install -e --id OpenJS.NodeJS --accept-package-agreements --accept-source-agreements } else { Write-Host "Winget missing! Downloading Node.js directly..."; Invoke-WebRequest -Uri "[https://nodejs.org/dist/v22.2.0/node-v22.2.0-x64.msi](https://nodejs.org/dist/v22.2.0/node-v22.2.0-x64.msi)" -OutFile "$env:TEMP\node.msi"; Start-Process msiexec.exe -Wait -ArgumentList "/i $env:TEMP\node.msi /qn" }; $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User') }; npm init -y; npm install mineflayer@latest minecraft-data@latest bedrock-protocol; Invoke-WebRequest -Uri "[https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS)" -OutFile "bots.js"; $currentPath = (Get-Location).Path; $batContent = "@echo off`ncd /d `"$currentPath`"`nnode bots.js"; $batContent | Out-File -FilePath "$env:USERPROFILE\bots.bat" -Encoding ascii; [Environment]::SetEnvironmentVariable("Path", $env:Path + ";$env:USERPROFILE", "User"); Clear-Host; & "$env:USERPROFILE\bots.bat"
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🎮 Global Usage

Once the initial environment provisioning is complete, the tool is installed globally. You no longer need to navigate to specific directories or run setup scripts. You can launch the bot swarm interface from any terminal path using the following command:

```bash
bots
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🗺️ Roadmap

- [x] Implement native support for Java Edition bots
- [x] Implement native support for Bedrock Edition bots
- [x] Develop automated global installers for Termux, Linux, and Windows
- [x] Automate `/login` and `/register` authentication handling for offline servers
- [ ] Integrate custom context-aware bot movement logic (Coming Soon)
- [ ] Develop a multi-threaded chat spam and moderation testing engine (Coming Soon)

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

## 🔗 Contact & Acknowledgments

* **Creator & Lead Developer:** OP_INJOY
* **Powered by:** Opinjoy

<p align="right">(<a href="#readme-top">back to top</a>)</p>
