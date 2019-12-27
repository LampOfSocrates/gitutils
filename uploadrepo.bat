REM @echo off

if [%1]==[] goto usage
git add -A 
git commit -m %1
REM git remote add origin %2
git push -u origin master

:usage
@echo Usage: %0 ^"Some helpful comments for today^" 
exit /B 1