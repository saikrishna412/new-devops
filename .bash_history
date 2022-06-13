apt-get update -y
/etc/apt/sources.list.d/backports.list
deb http://http.debian.net/debian wheezy-backports main
sudo apt-get update -y
sudo apt-get install -y linux-image-generic-lts-trusty linux-headers-generic-lts-trusty
yum install git -y
git --version
ll
ls -a
git init .
touch file1
touch file2
touch file3
ll
ls -a
git add .
git commmit -m "commit1" .
yes
git commit -m "comit1" .
git log
git status
git remote add origin https://github.com/saikrishna412/new-devops.git
git branch
git push -u origin master
git branch -b branch1
git checkout -b branch1
touch file4
touch file5
touch file6
git commit -m "branch2" .
git push -u origin branch1
git branch
git push -u origin branch1
