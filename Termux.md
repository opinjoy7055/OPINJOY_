### 📱 1. Termux Setup (Android)
![Termux](https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=termux&logoColor=white)

Niche diye gaye command ko copy karein aur apne Termux app mein paste karke Enter daba dein. Yeh sab kuch auto-install kar dega.

```bash
pkg update -y && pkg upgrade -y && pkg install nodejs python make clang cmake curl -y && npm init -y && npm install mineflayer bedrock-protocol && curl -O [https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS](https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS) && mv INJOY_FUN_BOTS bots.js && echo -e "#!/bin/bash\ncd \"$PWD\" && node bots.js" > $PREFIX/bin/bots && chmod +x $PREFIX/bin/bots && clear && bots
