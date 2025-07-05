@echo off
setlocal EnableDelayedExpansion

:: Store all passed parameters
set "params=%*"

:: Change to the script's directory
cd /d "%~dp0"

:: Ensure elevation to admin (UAC prompt if not admin already)
set "elevateScript=%temp%\getadmin.vbs"
if exist "!elevateScript!" del "!elevateScript!"

:: Check for admin rights
fsutil dirty query %systemdrive% >nul 2>&1
if errorlevel 1 (
  echo Set UAC = CreateObject^("Shell.Application"^) > "!elevateScript!"
  echo UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && ""%~s0"" !params!", "", "runas", 1 >> "!elevateScript!"
  cscript //nologo "!elevateScript!"
  del "!elevateScript!"
  exit /B
)

:: Confirm admin rights
whoami /groups | find "S-1-5-32-544" >nul
if errorlevel 1 (
  echo [ERROR] This script requires administrator privileges.
  pause
  exit /B 1
)

:: Check if setup.exe exists
if not exist "bin\setup.exe" (
  echo [ERROR] setup.exe not found in bin\ directory.
  pause
  exit /B 1
)

:: Check if Configuration.xml exists
if not exist "bin\Configuration.xml" (
  echo [ERROR] Configuration.xml not found in bin\ directory.
  pause
  exit /B 1
)

:: Run the setup command
echo Running setup...
"bin\setup.exe" /configure "bin\Configuration.xml" !params!
set "exitCode=%ERRORLEVEL%"

if "!exitCode!"=="0" (
  echo [SUCCESS] Setup completed successfully.
) else (
  echo [ERROR] Setup failed with exit code !exitCode!.
)

pause
endlocal
