Write-Host "🧹 OP_INJOY Ultimate Spider Bot ko Windows se clean kiya jaa raha hai..." -ForegroundColor Cyan

Remove-Item -Path "$env:USERPROFILE\bots.bat" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "bots.js", "package.json", "package-lock.json" -Force -ErrorAction SilentlyContinue
Remove-Item -Path "node_modules" -Recurse -Force -ErrorAction SilentlyContinue

Clear-Host
Write-Host "=========================================================" -ForegroundColor Magenta
Write-Host "🗑️ OP_INJOY 🕷️ Ultimate Spider Bot poori tarah delete ho chuka hai!" -ForegroundColor Green
Write-Host "=========================================================" -ForegroundColor Magenta
