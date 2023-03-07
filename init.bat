@echo off
Invoke-WebRequest "https://raw.githubusercontent.com/brunocazabat/repository-tmpl/main/myconfig.sh" -OutFile ./script.sh
bash ./script.sh
rm ./script.sh