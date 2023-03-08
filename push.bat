@echo off
@echo "Pushing changes to main branch"
git add .
set /p tag=Enter incoming commit name:
git commit -m "%tag%"
git pull origin main
git push origin main