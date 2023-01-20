echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Create JAR file" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
cd /var/www/pd2022h-java
FILE1=pom.xml
if [ -f "$FILE1" ]; then
    echo "$FILE1 exists1." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
	mvn clean package -Dmaven.test.skip=true -DoutputDirectory=/var/www/pd2022h-java-build/output - DclassesDirectory=/var/www/pd2022h-java-build/classes
else 
    echo "$FILE1 does not exist1." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
fi
FILE2=/target
if [ -d "$FILE2" ]; then
    echo "$FILE2 exists2." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
else 
    echo "$FILE2 does not exist2." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
fi
FILE3=cicd
if [ -d "$FILE3" ]; then
    echo "$FILE3 exists3." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
else 
    echo "$FILE3 does not exist3." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
fi
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Create JAR file |end|" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt