@echo off
REM OIM Daily Reporting PWA - Windows Deployment Helper

echo.
echo ================================================
echo    OIM REPORTS PWA - DEPLOYMENT HELPER
echo ================================================
echo.

REM Check for Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python not found!
    echo Please install Python from python.org
    pause
    exit /b 1
)

echo [OK] Python found
echo.

REM Get IP Address
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set IP_ADDR=%%a
    goto :ip_found
)
:ip_found
set IP_ADDR=%IP_ADDR:~1%

echo Network Information:
echo -------------------
echo Local IP: %IP_ADDR%
echo Localhost: localhost
echo.

:menu
echo What would you like to do?
echo --------------------------
echo 1. Start local server (Port 8000)
echo 2. Start local server (Custom port)
echo 3. Generate icons
echo 4. Check PWA requirements
echo 5. Exit
echo.

set /p choice="Enter choice [1-5]: "

if "%choice%"=="1" goto server_8000
if "%choice%"=="2" goto server_custom
if "%choice%"=="3" goto generate_icons
if "%choice%"=="4" goto check_requirements
if "%choice%"=="5" goto exit_script
echo Invalid choice!
goto menu

:server_8000
set PORT=8000
goto start_server

:server_custom
set /p PORT="Enter port number: "
goto start_server

:start_server
echo.
echo Starting server on port %PORT%...
echo ---------------------------------
echo.
echo Access URLs:
echo   Local:   http://localhost:%PORT%
echo   Network: http://%IP_ADDR%:%PORT%
echo.
echo Share network URL with your team!
echo Press Ctrl+C to stop server
echo.
python -m http.server %PORT%
goto end

:generate_icons
echo.
echo Opening icon generator...
echo -------------------------
echo.
echo 1. Browser will open icon-generator.html
echo 2. Click 'Generate Icons' button
echo 3. 8 PNG files will download
echo 4. Icons ready to use!
echo.
start icon-generator.html
pause
goto end

:check_requirements
echo.
echo Checking PWA Requirements...
echo ----------------------------
echo.

REM Check files
if exist "index.html" (echo [OK] index.html) else (echo [MISSING] index.html)
if exist "manifest.json" (echo [OK] manifest.json) else (echo [MISSING] manifest.json)
if exist "service-worker.js" (echo [OK] service-worker.js) else (echo [MISSING] service-worker.js)
if exist "icon-generator.html" (echo [OK] icon-generator.html) else (echo [MISSING] icon-generator.html)

echo.
echo Icon Files (Generate if missing):
if exist "icon-72.png" (echo [OK] icon-72.png) else (echo [MISSING] icon-72.png)
if exist "icon-96.png" (echo [OK] icon-96.png) else (echo [MISSING] icon-96.png)
if exist "icon-128.png" (echo [OK] icon-128.png) else (echo [MISSING] icon-128.png)
if exist "icon-144.png" (echo [OK] icon-144.png) else (echo [MISSING] icon-144.png)
if exist "icon-152.png" (echo [OK] icon-152.png) else (echo [MISSING] icon-152.png)
if exist "icon-192.png" (echo [OK] icon-192.png) else (echo [MISSING] icon-192.png)
if exist "icon-384.png" (echo [OK] icon-384.png) else (echo [MISSING] icon-384.png)
if exist "icon-512.png" (echo [OK] icon-512.png) else (echo [MISSING] icon-512.png)

echo.
echo Installation Support:
echo   iOS Safari:     [OK] Add to Home Screen
echo   Android Chrome: [OK] Install App
echo   Desktop Chrome: [OK] Install PWA
echo   Desktop Edge:   [OK] Install PWA
echo.
echo HTTPS Required: Only for production (not localhost)
echo.
pause
goto end

:exit_script
echo.
echo Goodbye!
exit /b 0

:end
echo.
pause
