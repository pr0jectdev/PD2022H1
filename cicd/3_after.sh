echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Create JAR file" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt

#!/bin/bash
MVNCMD=$(command -v mvn)
MVNPARAMS=" clean package -Dmaven.test.skip=true" # replace with your appropriate params
LOGFILE="mvn_jenkins.log"
$MVNCMD $MVNPARAMS 2>&1>> $LOGFILE



cd /var/www/pd2022h-java
FILE1=pom.xml
if [ -f "$FILE1" ]; then
    echo "$FILE1 exists." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
	mvn clean package
else 
    echo "$FILE1 does not exist." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
fi
FILE2=/target
if [ -f "$FILE2" ]; then
    echo "$FILE2 exists." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
	#mvn clean package -Dmaven.test.skip=true
else 
    echo "$FILE2 does not exist." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
fi
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Create JAR file |end|" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt