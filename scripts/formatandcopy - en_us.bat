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
diskpart /s "c:\scripts\sys\listdisk.txt"
echo.
SET /P disknr= "Which disc do you wanna delete and replace with files?: 
echo.
echo YOU KISSED DISC: %disknr%
pause
goto b

goto b

:b
diskpart /s "c:\scripts\sys\part1\%disknr%.txt"
echo Now we fucked up your disc, sorry. T:\
xcopy /s "c:\scripts\files" "T:\"
echo Now you have to move togheter (ONE NIGHT STAND) AKA Copying shit to disc.
diskpart /s c:\scripts\sys\part2\2.txt

echo.
echo.
echo.
pause
cls
echo Planted the ring.


rundll32.exe cmdext.dll,MessageBeepStub

choice /M "Do you wanna fuck up another disc and break up with this disc?"
If %Errorlevel%==2 goto :exit
If %Errorlevel%==1 goto :b
)


:c
echo.
echo.
echo.
echo HELPEFILE/FAQ
echo.
type C:\scripts\sys\README.txt
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