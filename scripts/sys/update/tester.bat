@echo off
set /a COUNT=0
for /f %%i in ('findstr /i /c:"parent" "%programfiles%\DiscLovestory\sys\update\git_commits.log"') do (
  set /a COUNT=COUNT + 1
)
echo "parent" words count: %COUNT%
pause
