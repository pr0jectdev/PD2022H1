echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Create JAR file" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
cd /var/www/pd2022h-java
mvn clean package
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Create JAR file |end|" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt