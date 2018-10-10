#! /bin/bash
set -x
read -p "Enter target Branch" tb
read -p "Enter source Branch" sb
sudo git checkout $tb > /dev/null 2>&1
sudo git merge $sb > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo " Merge is successful copied the  logs into LOGS/merge-logs.txt file"
 sudo git merge $sb &> LOGS/merge-logs.txt
 else 
  echo " Merge confilcts exists,copied the logs into LOGS/conflict.txt"	 
 sudo git merge $sb &> LOGS/conflict.txt
 fi
