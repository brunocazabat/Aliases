@echo off
set /A normalweektime=40
set /A workedhourstemp=0
set /A workedhours=0
set "listdays=Monday Tuesday Wednesday Thursday Friday Weekend"

:try_again
cls
for %%a in (%listdays%) do (
    set /p "workedhourstemp=How many hours did you work on %%a? "
    set /a number=%workedhourstemp% / 1 >nul 2>&1
    if "%workedhourstemp%" EQU "%number%" (set /A workedhours+=workedhourstemp) else (goto:try_again)
    
)
set /A fluctuation= %workedhours% - %normalweektime%
echo You worked %workedhours% hours this week. The fluctuation is %fluctuation% hours.