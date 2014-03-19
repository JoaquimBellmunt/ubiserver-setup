#!/bin/bash
# setup file for configuring ubiREST

# download from github
cd ~/
git clone http://github.com/RomainEndelin/ubiREST.git

# install fabric
sudo apt-get -y install fabric

# install setuptools for python
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | sudo python
rm setuptools*.zip

# install mod_wsgi for Apache
sudo apt-get -y install libapache2-mod-wsgi
#sudo sh -c 'echo "LoadModule wsgi_module/mod_wsgi.so" >> /etc/apache2/httpd.conf'   # not for Ubuntu. Make sure wsgi is present in /etc/apache2/mods_enabled
sudo sh -c 'cat add2httpd.conf >> /etc/apache2/httpd.conf'
sudo service apache2 restart

# create ubirest folder in www
sudo mkdir /var/www/ubirest/
sudo chown ubi:ubi /var/www/ubirest/

# install virtualenv for python and set it in ubirest folder
sudo apt-get -y install python-virtualenv
cd /var/www/ubirest/
virtualenv --distribute env
cd ~/

# copy ubirest_wsgi to www
cp ubirest_wsgi.py.prod /var/www/ubirest/ubirest_wsgi.py

# update fabfile
# TODO

# deploy with fabric
fab clean pack deploy

