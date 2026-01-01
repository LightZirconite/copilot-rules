@echo off
setlocal enabledelayedexpansion

set "PAUSE_ON_ERROR=0"
call :detectPauseMode

set "DEFAULT_URL=https://raw.githubusercontent.com/LightZirconite/copilot-rules/main/instructions/global.instructions.md"

if "%~1"=="" (
  set "SOURCE=%DEFAULT_URL%"
) else (
  set "SOURCE=%~1"
)
if "%~2"=="" (
  set "TARGET_NAME=global.instructions.md"
) else (
  set "TARGET_NAME=%~2"
)

call :detectTarget TARGET_DIR
if errorlevel 1 call :fail "Failed to resolve the VS Code Copilot instructions directory."

if not exist "%TARGET_DIR%" (
  mkdir "%TARGET_DIR%" 2>nul
  if errorlevel 1 call :fail "Unable to create "%TARGET_DIR%"."
)

set "DEST_FILE=%TARGET_DIR%\%TARGET_NAME%"

if exist "%DEST_FILE%" (
  echo [1/3] Removing previous version...
  del /F /Q "%DEST_FILE%" >nul 2>&1
)

echo [2/3] Downloading from GitHub...
call :download "%SOURCE%" "%DEST_FILE%"
if errorlevel 1 call :fail "Download failed."

echo [3/3] Installation complete: %DEST_FILE%

echo.
echo =========================================
echo   SUCCESS: Copilot instructions installed
echo =========================================
echo.

REM VS Code configuration
set "VSCODE_SETTINGS=%APPDATA%\Code\User\settings.json"
echo For Copilot to use these instructions, your settings.json must contain:
echo   "github.copilot.chat.codeGeneration.useInstructionFiles": true
echo.
choice /C YN /M "Do you want to update your VS Code configuration automatically"
if errorlevel 2 goto :skipConfig
if errorlevel 1 goto :updateConfig

:updateConfig
echo.
echo Downloading recommended configuration...
set "SETTINGS_URL=https://raw.githubusercontent.com/LightZirconite/copilot-rules/main/.vscode/settings.json"
set "TEMP_SETTINGS=%TEMP%\copilot-rules-settings.json"
call :download "%SETTINGS_URL%" "%TEMP_SETTINGS%"
if errorlevel 1 (
  echo WARNING: Unable to download configuration.
  echo Manually add this line to %VSCODE_SETTINGS%:
  echo   "github.copilot.chat.codeGeneration.useInstructionFiles": true
  goto :skipConfig
)
copy /Y "%TEMP_SETTINGS%" "%VSCODE_SETTINGS%" >nul
del /F /Q "%TEMP_SETTINGS%" >nul 2>&1
echo VS Code configuration updated successfully!
goto :end

:skipConfig
echo.
echo Manual configuration required:
echo 1. Open VS Code Settings (Ctrl+,)
echo 2. Click "Open Settings (JSON)" (icon in top right)
echo 3. Add this line:
echo    "github.copilot.chat.codeGeneration.useInstructionFiles": true
echo.

:end
echo.
echo =========================================
echo.
choice /C YN /M "Do you want to restart VS Code now"
if errorlevel 2 goto :skipRestart
if errorlevel 1 goto :restartVSCode

:restartVSCode
echo.
echo Closing VS Code...
taskkill /IM Code.exe /F >nul 2>&1
timeout /t 2 >nul
echo Starting VS Code...
start "" code
echo.
goto :done

:skipRestart
echo.
echo Please restart VS Code manually to apply changes.
echo.

:done
if "%PAUSE_ON_ERROR%"=="1" pause
exit /b 0

:detectPauseMode
for %%I in (%CMDCMDLINE%) do (
  if /I "%%~I"=="/c" set "PAUSE_ON_ERROR=1"
)
exit /b 0

:detectTarget
REM Determine correct prompts directory
set "%~1=%APPDATA%\Code\User\prompts"
exit /b 0

:download
REM Download a file using PowerShell
powershell -NoProfile -Command "Invoke-WebRequest -Uri '%~1' -OutFile '%~2' -UseBasicParsing" 2>nul
if errorlevel 1 (
  powershell -NoProfile -Command "[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; (New-Object Net.WebClient).DownloadFile('%~1','%~2')" 2>nul
)
if not exist "%~2" exit /b 1
exit /b 0

:fail
echo.
echo ERROR: %~1
echo.
if "%PAUSE_ON_ERROR%"=="1" pause
exit /b 1
