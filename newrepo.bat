
echo =================
echo "Usage : newrepo <name of local and remote repo folder > < github account name>
echo =================
REM eg junk3
mkdir %1

cd %1

git init 

echo "First Commit" >> README.md

git add README.md

git commit -m "First Commit"

REM eg https://github.com/LampOfSocrates/junk3.git

git remote add origin https://github.com/%2/%1

git push -u origin master
