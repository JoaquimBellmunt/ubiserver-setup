#!/bin/bash
# setup file for configuring ubismart server

# create user and add to sudoers
sudo apt-get update
sudo apt-get -y install sudo
sudo adduser ubi
sudo usermod -a -G sudo ubi

# change to this user
su - ubi
cd ~/

# enable ssh and screen
sudo apt-get -y install ssh screen


### install apache, php, mysql, phpmyadmin
# install apache
sudo apt-get -y install apache2
# set root as pwd for mysql in non-interactive mode
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
# install mysql
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
# setup mysql
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
# install php
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt
# add option for php index files
sudo sed -i 's/DirectoryIndex /DirectoryIndex index.php /g' /etc/apache2/mods-enabled/dir.conf
# create info.php page
sudo sh -c 'echo "<?php\nphpinfo();\n?>" > /var/www/info.php'
sudo service apache2 restart
# install phpmyadmin and add to apache config file
sudo apt-get -y install phpmyadmin
sudo sh -c 'echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf'
sudo service apache2 restart
