@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
cls
echo.
echo.
echo DELETE EVERYTHING rm -rf * on that usb-flashdisc
echo not your main disc, never tested c: disc
echo AKA
echo Marry your flash drive, that love story
echo.
echo.
echo.



:h
choice /m "Do you wanna see me naked? (ONE NIGHT STAND) <- That's the help files"

IF %ERRORLEVEL%==1 goto c
IF %ERRORLEVEL%==2 goto a

:a

diskpart /s "%programfiles%\sys\listdisk.txt"
echo.
SET /P disknr= "Which disc do you wanna delete and replace with files?:
echo.
echo YOU KISSED DISC: %disknr%
pause
goto b

goto b

:b
diskpart /s "%programfiles%\sys\part1\%disknr%.txt"
echo Now we fucked up your disc, sorry. T:\
xcopy /s "%programfiles%\files" "T:\"
echo Now you have to move togheter (ONE NIGHT STAND) AKA Copying shit to disc.
diskpart /s %programfiles%\sys\part2\2.txt

echo.
echo.
echo.
pause
cls
echo Planted the ring.


rundll32.exe cmdext.dll,MessageBeepStub

set /p again= "Do you wanna fuck up another disc (y), change some settings (c) or leave on vacations with your wife (n)?: "
If %errorlevel%==1 goto :m
If %again%==Y goto :b
If %again%==y goto :b
If %again%==N goto :exit
If %again%==n goto :exit
If %again%==C goto :a
If %again%==c goto :a


:c
echo.
echo.
echo.
echo HELPEFILE/FAQ
echo.
type %programfiles%\sys\README.txt
echo.
echo.
pause
cls
echo.
echo.
echo.
%diskvar% = "" goto b
goto a

:exit
echo Have a nice life.
Made by Glenn Mesel, Oppland Fylkeskommune
TIMEOUT /T 10
