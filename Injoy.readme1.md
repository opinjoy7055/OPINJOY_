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

There are many bot scripts out there, but few are truly customizable and hybrid. **OP_INJOY** is a fully-fledged bot swarm tool that runs effortlessly on Android (Termux), Linux Servers, and Windows. 

It handles everything you need: automatic Node.js installations, dependency building, space trimming, and dynamic bot deployment for both **Minecraft Java** and **Minecraft Bedrock** editions!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## ⚡ Getting Started (One-Click Installations)

I give you three ways 😜 to use this. Select your terminal, copy the entire command, paste it, and press Enter. It configures everything automatically!

### 📱 1. Termux Setup (Android)
```bash
pkg update -y && pkg upgrade -y && pkg install nodejs python make clang cmake curl -y && npm init -y && npm install mineflayer bedrock-protocol && curl -O https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS && mv INJOY_FUN_BOTS bots.js && echo -e "#!/bin/bash\ncd \"$PWD\" && node bots.js" > $PREFIX/bin/bots && chmod +x $PREFIX/bin/bots && clear && bots
