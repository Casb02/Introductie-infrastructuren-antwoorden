#!/bin/bash

# update and upgrade the list of available software

sudo apt-get update -y && sudo apt-get upgrade -y

# install apache2

sudo apt-get install apache2 -y

# install php and other requires software

sudo apt install php libapache2-mod-php php-{fpm,pear,imap,apcu,intl,cgi,common,mbstring,net-socket,gd,xml-util,mysql,bcmath} -y

# install required software "curl"

sudo apt-get install curl -y

# start service apache2

sudo systemctl start apache2
# enable apache2 so it automatically starts after reboot

sudo systemctl enable apache2

# install open source software "osticket"

sudo curl -s https://api.github.com/repos/osTicket/osTicket/releases/latest \
	| grep browser_download_url \
	| grep "browser_download_url" \
	| cut -d '"' -f 4 \
	| wget -i -

# install software "unzip"

sudo apt-get install unzip -y

# remove old osTicket

sudp rm -r osTicket -y

# unzip osticket in directory osTicket

sudo unzip osTicket-v*.zip -d osTicket

#remove old osTicket 
sudp rm -r /var/www/html/osTicket -y

# verplaats directory osTicket onder de directory /var/www/html

sudo cp -avr osTicket /var/www/html/

# change directory to /var/www/html/osTicket/upload/include

cd /var/www/html/osTicket/upload/include

# copy the file ost-sampleconfig.php to ost-config.php

sudo cp ost-sampleconfig.php ost-config.php

# change owner on directory /var/www to user and group www-data

sudo chown -R www-data:www-data /var/www/

# install software mysql-client for testing purposes
# to test connection to the database 

sudo apt install mysql-client-core-8.0 

# restart service apache2 

sudo systemctl restart apache2
