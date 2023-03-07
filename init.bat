@echo off
powershell -Command "Invoke-Webrequest https://raw.githubusercontent.com/brunocazabat/repository-tmpl/main/myconfig.sh -OutFile ./script.sh" & cls
bash ./script.sh
rm ./script.sh