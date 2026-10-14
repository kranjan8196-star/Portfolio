@echo off
cd /d "%~dp0"
title Ranjan Kumar Portfolio
where npm >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed. Install the LTS version from https://nodejs.org/ and run this file again.
  pause
  exit /b 1
)
if not exist "node_modules" (
  echo Installing project packages for first run...
  call npm install
  if errorlevel 1 (
    echo Package installation failed. Check your internet connection and try again.
    pause
    exit /b 1
  )
)
echo Starting Ranjan Kumar Portfolio...
call npm run dev -- --open
pause
