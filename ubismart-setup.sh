#!/bin/bash
# setup file for configuring ubismart framework on the server

# TODO: scripted download of bundles etc. Manual for now due to non availability for safe private download.

# uncompress archives and move folders to the good location
tar -zxvf ~/Downloads/ubismart-platform-starhome.tar.gz
tar -zxvf ~/Downloads/bundles.tar.gz
tar -zxvf ~/Downloads/eye-bin.tar.gz
cp -r ubiserver-ini/ ~/ubiserver
mv */ ~/ubiserver

# install java
sudo apt-get -y install openjdk-7-jdk

# setup database 
mysql -u root -proot -h localhost < create.sql
mysql -u root -proot -h localhost qol_dev < dump.sql
