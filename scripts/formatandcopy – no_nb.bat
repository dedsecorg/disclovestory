@echo off
æ = ‘
cls
ø = ›
cls
å = †
cls
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
cls
echo.
echo.
echo Oppland fylkeskommune
echo.
echo.
echo.



:h
choice /m "Vil du ta en titt igjennom hjelpefila?"

IF %ERRORLEVEL%==1 goto c
IF %ERRORLEVEL%==2 goto a

:a
diskpart /s "c:\scripts\sys\listdisk.txt"
echo.
SET /P disknr= "Hvilken disk vil du legge eksamensnettleseren i?: 
echo.
echo Du har valgt disk nummer: %disknr%
pause
goto b

echo disk %diskvar%
goto b

:b
diskpart /s "c:\scripts\sys\part1\%disknr%.txt"
echo Da har vi lagd en partisjon og satt denne til bokstaven T:\
xcopy /s "c:\scripts\files" "T:\"
echo Kopierer over nettleseren til minnebrikka
diskpart /s c:\scripts\sys\part2\2.txt

echo.
echo.
echo.
pause
cls
echo Da er det gjort.


rundll32.exe cmdext.dll,MessageBeepStub

choice /M "Har du en disk til som skal ha eksamensnettleseren?"
If %Errorlevel%==2 goto :exit
If %Errorlevel%==1 goto :b
)


:c
echo.
echo.
echo.
echo HJELPEFIL/FAQ
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
echo Ha en fin dag.
Made by Glenn Mesel, Oppland Fylkeskommune
TIMEOUT /T 10
