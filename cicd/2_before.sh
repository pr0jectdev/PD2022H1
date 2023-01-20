echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Delete old files" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt
rm -rfv /var/www/pd2022h-java/*
echo "$(TZ=UTC+3 date +"%d/%m/%Y %H:%M:%S") . Delete old files |end|" >> /var/www/projectdev.services/html/deploy_pd2022h-java.txt