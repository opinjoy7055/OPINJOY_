Set-ExecutionPolicy Bypass -Scope Process -Force
Write-Host "🕷️ OP_INJOY Ultimate Spider Bot ka Windows setup start ho raha hai..." -ForegroundColor Cyan

if (!(Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Host "Node.js download aur install ho raha hai..." -ForegroundColor Yellow
    winget install -e --id OpenJS.NodeJS --accept-package-agreements --accept-source-agreements
    $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User')
}

npm init -y | Out-Null
Write-Host "Mineflayer aur dependencies install ho rahi hain..." -ForegroundColor Yellow
npm install mineflayer@latest minecraft-data@latest bedrock-protocol --ignore-scripts --no-audit --no-fund --force

Write-Host "Spider Bot script download ho rahi hai..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/opinjoy7055/OPINJOY_/main/INJOY_FUN_BOTS" -OutFile "bots.js"

$currentPath = (Get-Location).Path
$batContent = '@echo off' + [Environment]::NewLine + 'cd /d "' + $currentPath + '"' + [Environment]::NewLine + 'node bots.js'
$batContent | Out-File -FilePath "$env:USERPROFILE\bots.bat" -Encoding ascii
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";$env:USERPROFILE", "User")

Clear-Host
Write-Host "=========================================" -ForegroundColor Magenta
Write-Host "✅ WINDOWS INSTALLATION SUCCESSFUL!" -ForegroundColor Green
Write-Host "🎮 Naya CMD ya PowerShell kholo aur 'bots.bat' likh kar Enter dabao!" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Magenta
