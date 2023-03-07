@echo off
git add .
set /p tag=Enter incoming commit name:
git commit -m "%tag%"
git push
