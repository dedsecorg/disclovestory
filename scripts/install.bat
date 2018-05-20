@echo off
echo Installing DiscLovestory
echo.
echo.
echo.
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
rd /q /s "%programfiles%\DiscLovestory"
mkdir "%programfiles%\DiscLovestory"
xcopy "%~dp0..\scripts" "%programfiles%\DiscLovestory" /s
