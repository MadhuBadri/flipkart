#!/bin/bash

if [ $ENVIRONMENT = "QA" ]; then
 for i in `cat IPs.txt` 
 do
	 echo "Deploying war file into $i QA server"
	 sleep 3
sshpass -p "madhu" scp target/MavenWebProject.war Madhu@172.17.0.2:/home/softwares/apache-tomcat-8.5.33/webapps
         echo "Starting tomcat server in $i QA server"
	 sleep 3
sshpass -p "madhu" ssh Madhu@172.17.0.2 "JAVA_HOME=/home/softwares/jdk1.8.0_181"/home/softwares/apache-tomcat-8.5.33/bin/startup.sh
   done
   echo "Deployment is successfu"
   fi
