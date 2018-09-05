#!/bin/bash
if [ $ENVIRONMENT = "QA" ]; then
	echo "Deploying the war file into QA server"
         sleep 3
sshpass -p "madhu" scp target/MavenWebProject.war Madhu@172.17.0.2:/home/softwares/apache-tomcat-8.5.33/webapps
sshpass -p "madhu" ssh Madhu@172.17.0.2 "JAVA_HOME=/home/softwares/jdk1.8.0_181" "/home/softwares/apache-tomcat-8.5.33/bin/startup.sh"
        echo "Deployment successful in QA Server"
elif [ $ENVIRONMENT = "SIT" ]; then
	echo "Deploying the war file into SIT server"
	sleep 3
sshpass -p "madhu" scp target/MavenWebProject.war Madhu@172.17.0.3:/home/softwares/apache-tomcat-8.5.33/webapps
sshpass -p "madhu" ssh Madhu@172.17.0.3 "JAVA_HOME=/home/softwares/jdk1.8.0_181" "/home/softwares/apache-tomcat-8.5.33/bin/startup.sh"
       echo "Deployment successful in SIT server"
fi
