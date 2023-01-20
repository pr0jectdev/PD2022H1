echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Start service" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
FILE2=/target
if [ -f "$FILE2" ]; then
    echo "$FILE2 exists." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
	sudo systemctl restart springbootservicerun
else 
    echo "$FILE2 does not exist." >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
fi
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Start service |end|" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt