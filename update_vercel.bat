@echo off
echo ================================================================================
echo UPDATE VERCEL DEPLOYMENT
echo ================================================================================
echo.

cd /d "%~dp0"

echo [1/4] Copying latest data...
copy /Y ..\sync_data.json . >nul
if errorlevel 1 (
    echo ERROR: sync_data.json not found. Please sync from local server first.
    pause
    exit /b 1
)

echo [2/4] Copying calendar view...
copy /Y ..\CALENDAR_VIEW.html . >nul

echo [3/4] Committing changes...
git add sync_data.json CALENDAR_VIEW.html
git commit -m "Update booking data - %date% %time%"

echo [4/4] Pushing to GitHub...
git push

echo.
echo ================================================================================
echo SUCCESS! Vercel will auto-deploy in a few seconds.
echo ================================================================================
echo.
echo Your Vercel URL: https://room-availability-tool.vercel.app
echo.
pause