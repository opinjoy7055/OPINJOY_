<a name="readme-top"></a>

<div align="center">

# 👾 OP_INJOY Ultimate Bot Swarm 👾

**An advanced, hybrid, and dynamic Minecraft bot swarm deployment tool.**<br>
Engineered to seamlessly support both Java and Bedrock editions simultaneously with a vibrant, multi-colored terminal interface.

[![Node.js](https://img.shields.io/badge/Node.js-v22-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)](#)
[![Linux](https://img.shields.io/badge/Linux-Supported-FCC624?style=for-the-badge&logo=linux&logoColor=black)](#)
[![Termux](https://img.shields.io/badge/Termux-Supported-000000?style=for-the-badge&logo=termux&logoColor=white)](#)
[![Windows](https://img.shields.io/badge/Windows-Supported-0078D6?style=for-the-badge&logo=windows&logoColor=white)](#)

</div>

---

## 🌐 About The Project

While many Minecraft bot scripts exist, few offer true hybrid functionality and deep customization. **OP_INJOY** is a comprehensive bot swarm deployment tool built to run effortlessly across Linux, Android (Termux), and Windows environments.

It automates the entire provisioning process—handling Node.js runtime installation, dependency compilation, system environment configuration, and dynamic swarm deployment for both Minecraft Java and Bedrock clients. The interactive interface uses high-visibility, native multi-color ANSI palettes to clearly display deployment metrics, warnings, and success logs without demanding external styling packages.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ⚡ Automated One-Click Installation

Select the command link corresponding to your operating system, click the copy button, paste it into your terminal shell, and press enter.

### 🐧 1. Linux Systems (Ubuntu/Debian/Containers)
```bash
curl -fsSL [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/install.sh](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/install.sh) -o install.sh && sudo bash install.sh && rm install.sh
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 📱 2. Termux Terminal (Android)
```bash
curl -fsSL [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/install.sh](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/install.sh) -o install.sh && bash install.sh && rm install.sh
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 🪟 3. Windows Setup (PowerShell)
> **⚠️ Execute inside a PowerShell terminal running as Administrator. ⚠️**
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; New-Item -ItemType Directory -Force -Path "$HOME\op-injoy-bot" | Out-Null; Set-Location "$HOME\op-injoy-bot"; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; if (!(Get-Command node -ErrorAction SilentlyContinue)) { if (Get-Command winget -ErrorAction SilentlyContinue) { winget install -e --id OpenJS.NodeJS --accept-package-agreements --accept-source-agreements --silent } else { Invoke-WebRequest -Uri "[https://nodejs.org/dist/v22.2.0/node-v22.2.0-x64.msi](https://nodejs.org/dist/v22.2.0/node-v22.2.0-x64.msi)" -OutFile "$env:TEMP\node.msi"; Start-Process msiexec.exe -Wait -ArgumentList "/i $env:TEMP\node.msi /qn" }; $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User') }; npm init -y; npm install mineflayer@latest minecraft-data@latest bedrock-protocol --no-audit --no-fund; Invoke-WebRequest -Uri "[https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS)" -OutFile "bots.js"; node bots.js
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🎮 Execution & Usage

Once the automated installation completes, your environment is entirely setup. If you close your terminal session or want to spin up the bots again later, simply navigate to your folder path and launch it directly:

```bash
cd ~/op-injoy-bot && node bots.js
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## 🗺️ Roadmap

- [x] Implement native support for Java Edition bots
- [x] Implement native support for Bedrock Edition bots
- [x] Develop automated global installers for Linux, Termux, and Windows
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
