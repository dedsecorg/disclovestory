@echo off
echo Installing DiscLovestory
echo.
echo.
echo.
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
rd /q /s "%programfiles%\DiscLovestory"
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /f
mkdir "%programfiles%\DiscLovestory"
xcopy "%~dp0..\scripts" "%programfiles%\DiscLovestory" /s
echo.
echo.
xcopy "%~dp0\disclovestory\scripts\sys\shortcuts\formatandcopy - en_us.bat - Snarvei" "%USERPROFILE%\Desktop\"
xcopy "%~dp0\disclovestory\scripts\sys\shortcuts\" "%USERPROFILE%\Desktop\"
echo.
echo.

pause
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v DisplayName /t REG_SZ /d DiscLovestory /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v InstallLocation /t REG_SZ /d "%programfiles%\DiscLovestory"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v UninstallString /t REG_SZ /d "%programfiles%\DiscLovestory\uninstall.bat"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v Publisher /t REG_SZ /d "Glenn Mesel"
choice /m "Do you wanna hace a shortcut at the desktop?"
if ERRORLEVEL==1 echo yes
if ERRORLEVEL==2 goto b
:b
REM mklink "%programfiles%/DiscLovestory/formatandcopy – en_us.bat" "%USERPROFILE%/Desktop/formatandcopy – en_us"
REM mklink "%programfiles%/DiscLovestory/formatandcopy – no_nb.bat" "%USERPROFILE%/Desktop/formatandcopy – no_nb"
