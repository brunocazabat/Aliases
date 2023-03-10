@echo off
@echo "Pushing changes to main branch"
git add .
set /p msg=Enter incoming commit name:
git commit -m "%msg%"
git pull origin main
git push origin main