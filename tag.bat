@echo off
git tag --sort=-v:refname
set /p tag=Enter incoming tag name:
git tag "%tag%"
git push origin "%tag%"
