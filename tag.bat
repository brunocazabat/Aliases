@echo off
@echo "Creating new tag and pushing it to main branch"
git tag --sort=-v:refname
@push
set /p tag=Please enter the incoming tag name:
git tag "%tag%"
git pull origin main
git push origin "%tag%"
