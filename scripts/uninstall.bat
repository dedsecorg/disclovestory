@echo off
echo Uninstalling DiscLovestory
echo.
echo.
echo.
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
rd /q /s "%programfiles%\DiscLovestory"
rd /q /s "%programfiles%\DiscLovestory"
echo Fixing regedit
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\DiscLovestory /f
