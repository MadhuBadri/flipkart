#! /bin/bash
set -x
read -p "Enter target Branch" tb
read -p "Enter source Branch" sb
git checkout $tb > /dev/null 2>&1
git merge $sb > /dev/null 2>&1
if [ "$? -eq 0" ]; then

 git merge $sb > /LOGS/merge-logs.txt

 else git merge $tb > /LOGS/conflict.txt
 fi
