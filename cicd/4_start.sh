echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Start service" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
sudo systemctl restart springbootservicerun
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Start service |end|" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt