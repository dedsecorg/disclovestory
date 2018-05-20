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
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v DisplayName /t REG_SZ /d DiscLovestory /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v InstallLocation /t REG_SZ /d "%programfiles%\DiscLovestory"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v UninstallString /t REG_SZ /d "%programfiles%\DiscLovestory\uninstall.bat"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /v Publisher /t REG_SZ /d "Glenn Mesel"
