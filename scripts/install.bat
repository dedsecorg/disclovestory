if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
xcopy %~dp0 c:\script\