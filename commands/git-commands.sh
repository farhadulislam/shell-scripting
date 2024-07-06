#! /bin/bash
# Author : Farhad Islam
#Version : 1.0.0
#Useful git commands.


git remote add origin https://github.com/farhadulislam/modern-java-exercises.git
git push --set-upstream origin master
git gc --prune=all

#git log
git log --stat
#This command shows the commit's history including all files and their changes
git log -p
git reflog

#git add 
git add -p

#git diff
git diff
git diff main.java
git diff --staged

#Git bisect 
git bisect good
git bisect bad
git bisect start
git bisect reset

#store login credentials in the cache so you don't have to type them in each time
git config --global credential.helper cache

#With the asterisk in the command below, you can add all files starting with 'fil' in the staging area
git add fil*

#Git remote
git remote -v

#git branch

git branch -r;
git branch -a;
git branch -vva;
git branch -vv;
