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
cls
IF %ERRORLEVEL%==1 goto c
IF %ERRORLEVEL%==2 goto a

:a
diskpart /s "%ProgramFiles%\discolovestory\sys\listdisk.txt"
echo.
SET /P disknr= "Hvilken disk vil du legge filene i?:
echo.
echo Du har valgt disk nummer: %disknr%
pause
goto b

echo disk %diskvar%
goto b

:b
diskpart /s "%ProgramFiles%\discolovestory\sys\part1\%disknr%.txt"
echo Da har vi lagd en partisjon og satt denne til bokstaven T:\
xcopy /s "%ProgramFiles%\discolovestory\files" "T:\"
echo Kopierer over filene til minnebrikka
diskpart /s %ProgramFiles%\discolovestory\sys\part2\2.txt

echo.
echo.
echo.
pause
cls
echo Da er det gjort.
goto :l

rundll32.exe cmdext.dll,MessageBeepStub
:m
rundll32.exe cmdext.dll,MessageBeepStub
goto :l
:l
cls
set /p again= "Vil du gj›re det samme på en ny disk (y), bytte noen instillinger (c) eller stikke (n)?: "
If %errorlevel%==1 goto :m
If %again%==Y goto :b
If %again%==y goto :b
If %again%==N goto :exit
If %again%==n goto :exit
If %again%==C goto :a
If %again%==c goto :a
If %again%?=="" goto :b

)


:c
echo.
echo.
echo.
echo HJELPEFIL/FAQ
echo.
type "%ProgramFiles%\DiscoLovestory\sys\README.txt"
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
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.

echo Ha en fin dag.
echo Made by Glenn Mesel, Oppland Fylkeskommune
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

TIMEOUT /T 10
