@echo off
:: Office 2016/2019 Retail to Volume License Converter
:: Enhanced by GitHub Copilot

:: Store all passed parameters
set "params=%*"

:: Change to the script's directory
cd /d "%~dp0"

:: Ensure elevation to admin (UAC prompt if not admin already)
if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs"
fsutil dirty query %systemdrive% >nul 2>&1 || (
  echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
  echo UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
  "%temp%\getadmin.vbs"
  exit /B
)
del /f /q "%temp%\getadmin.vbs" >nul 2>&1

:: Get Windows version
for /f "tokens=6 delims=[]. " %%G in ('ver') do set win=%%G

setlocal

:: Product keys
set OPPKEY=XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99
set PPKEY=YG9NW-3K39V-2T3HJ-93F3Q-G83KT
set VPKEY=PD3PC-RHNGV-FXJ29-8JK7D-RJRJK
set S4BKEY=869NQ-FJ69K-466HW-QYCP2-DDBV6

pushd "%~dp0"
Title Office 2016/2019 Retail to Volume License Converter

:: Detect Office path
set "OfficePath=%ProgramFiles%\Microsoft Office"
if not exist "%OfficePath%\root\Licenses16" set "OfficePath=%ProgramFiles(x86)%\Microsoft Office"
if not exist "%OfficePath%\root\Licenses16" (
  echo Could not find the license files for Office 2016/2019!
  pause
  goto :eof
)

echo Press Enter to start VL-Conversion...
pause
echo.

cd /D "%SystemRoot%\System32"

:: Install licenses
if %win% GEQ 9200 (
  set "LICCMD=cscript slmgr.vbs /ilc"
  set "LICPATH=%OfficePath%\root\Licenses16"
) else (
  set "LICCMD=cscript ""%OfficePath%\Office16\ospp.vbs"" /inslic"
  set "LICPATH=%OfficePath%\root\Licenses16"
)

:: List of license files
set LicFiles=ProPlusVL_KMS_Client-ppd.xrm-ms ProPlusVL_KMS_Client-ul.xrm-ms ProPlusVL_KMS_Client-ul-oob.xrm-ms ^
ProjectProVL_KMS_Client-ppd.xrm-ms ProjectProVL_KMS_Client-ul-oob.xrm-ms ProjectProVL_KMS_Client-ul.xrm-ms ^
VisioProVL_KMS_Client-ppd.xrm-ms VisioProVL_KMS_Client-ul-oob.xrm-ms VisioProVL_KMS_Client-ul.xrm-ms ^
SkypeforBusinessVL_KMS_Client-ppd.xrm-ms SkypeforBusinessVL_KMS_Client-ul.xrm-ms SkypeforBusinessVL_KMS_Client-ul-oob.xrm-ms ^
client-issuance-bridge-office.xrm-ms client-issuance-root.xrm-ms client-issuance-root-bridge-test.xrm-ms ^
client-issuance-stil.xrm-ms client-issuance-ul.xrm-ms client-issuance-ul-oob.xrm-ms pkeyconfig-office.xrm-ms

for %%F in (%LicFiles%) do (
  if exist "%LICPATH%\%%F" (
    %LICCMD% "%LICPATH%\%%F"
  ) else (
    echo Warning: License file not found: %%F
  )
)

:: Install product keys
for %%a in (%OPPKEY% %PPKEY% %VPKEY% %S4BKEY%) do (
  cscript "%OfficePath%\Office16\ospp.vbs" /inpkey:%%a
)

:: Activate Office
cscript "%OfficePath%\Office16\ospp.vbs" /act

echo.
echo Retail to Volume License conversion finished.
echo.
pause
