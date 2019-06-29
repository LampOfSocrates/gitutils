
Keep these newrepo.bat and uploadrepo.bat in your windows\system32 folder ( since its already on ur path)

Usage:
# Once in a while when you start a new repos
newrepo gitutils LampOfSocrates


# Daily basis 
uploadrepo mychanges


TODO:
1. uploadrepo should take spaces in the comments
2. Use Git config to figure your own Account Name instead of passing in 2nd argument of newrepo


Login Caveats
===============
Step1) 
On Windows 10 , open "credential manager" from run command or Control Panel
Save your login password as a Windows Credential.
"Add a Generic Credential"
Internet Address: git:https://github.com
UserName : Yours
Password : Yours

Step2) Connect Git to your Windows Credential
git config --global credential.helper wincred



