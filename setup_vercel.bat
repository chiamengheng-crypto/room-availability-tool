@echo off
echo ================================================================================
echo SETUP VERCEL DEPLOYMENT
echo ================================================================================
echo.

cd /d "%~dp0"

echo [1/3] Initializing Git repository...
git init

echo [2/3] Copying files from local version...
copy /Y ..\sync_data.json . >nul
copy /Y ..\CALENDAR_VIEW.html . >nul

echo [3/3] Creating initial commit...
git add .
git commit -m "Initial commit - Room Availability Tool for Vercel"

echo.
echo ================================================================================
echo SETUP COMPLETE!
echo ================================================================================
echo.
echo NEXT STEPS:
echo.
echo 1. Create a GitHub repository: https://github.com/new
echo    Name: room-availability-tool
echo.
echo 2. Run these commands:
echo    git remote add origin https://github.com/YOUR_USERNAME/room-availability-tool.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Go to https://vercel.com and import the repository
echo.
echo 4. Your app will be live at: https://room-availability-tool.vercel.app
echo.
pause