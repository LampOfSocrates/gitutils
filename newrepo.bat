REM inspired from https://kbroman.org/github_tutorial/pages/init.html

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

REM Create the remote repository. Best done via web. This curl command using git API will prompt for your password
curl -u %GitUserName% https://api.github.com/user/repos -d "{\"name\":\"%1\"}"

REM Now add and push the remote git eg https://github.com/LampOfSocrates/junk3.git
git remote add origin git@github.com:/%GitUserName%/%1.git
git push -u origin master


:usage
@echo Usage: %0 ^<name of local and remote repo folder^> 
exit /B 1