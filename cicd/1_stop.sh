echo "" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Stop service" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
#sudo systemctl stop springbootservicerun
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Stop service |end|" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
