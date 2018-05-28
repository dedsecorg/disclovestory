for /f %%C in ('Find /C "parent" ^< $env:programfiles\DiscLovestory\sys\update\git_commit.log') do set Count=%%C
pause
    echo Found = !Count! time/s >> xerox.log
pause
    echo Found = %%C time/s

pause
