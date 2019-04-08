cd %programfiles%\DiscLovestory\sys\update\
rename version.log oldversion.log
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& $env:programfiles\DiscLovestory\sys\update\foresteps.ps1
cd %programfiles%\DiscLovestory\sys\update\
count.exe git_commit.log parents>version.log
fc oldversion.log version.log
if %ERRORLEVEL% == 0 goto a
if %ERRORLEVEL% == 1 goto b
:a
echo updating
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& $env:programfiles\DiscLovestory\sys\update\update_list.
call "%temp%\Disclovestory\unzip\disclovestory-master\scripts\install.bat"
goto b


:b
choice /m do you wanna start the program/script?
if %errorlevel% == 1 %ProgramFiles%\DiscLovestory\DiscLovestory - en_us.bat
if %errorlevel% == 0

echo no need for update, see ya later!
echo Have a nice day.
Made by Glenn Mesel, Oppland Fylkeskommune
TIMEOUT /T 10
