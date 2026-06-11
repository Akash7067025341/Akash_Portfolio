@echo off
title Portfolio Auto-Publisher
color 0b
echo ===================================================
echo           PUBLISHING PORTFOLIO TO GITHUB
echo ===================================================
echo.

:: Go to the directory where this script is located
cd /d "%~dp0"

echo [1/3] Scanning and staging changes...
"C:\Program Files\Git\cmd\git.exe" add .

echo.
echo [2/3] Creating auto-commit...
:: Get current date and time for commit message
set commit_msg=Auto-update: %date% %time%
"C:\Program Files\Git\cmd\git.exe" commit -m "%commit_msg%"

echo.
echo [3/3] Uploading changes live to GitHub Pages...
"C:\Program Files\Git\cmd\git.exe" push

echo.
echo ===================================================
echo    SUCCESS: Website updates pushed to GitHub!
echo    Your changes will be live in 30-40 seconds.
echo ===================================================
echo.
echo This window will close automatically in 5 seconds...
timeout /t 5 > nul
exit
