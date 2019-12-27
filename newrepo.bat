REM @echo off

for /f "tokens=*" %%a in ('git config user.name') do set GitUserName=%%a
echo Using Git Account %GitUserName%
if [%1]==[] goto usage


REM First create the folder and move to it
mkdir %1
cd %1

REM Init the local git repo and commit
git init 
echo "First Commit" >> README.md
git add README.md
git commit -m "First Commit"


REM Now add and push the remote git eg https://github.com/LampOfSocrates/junk3.git
git remote add origin https://github.com/%GitUserName%/%1
git push -u origin master


:usage
@echo Usage: %0 ^<name of local and remote repo folder^> 
exit /B 1