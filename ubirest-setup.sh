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

# update fabfile
# TODO

# deploy with fabric
fab clean pack deploy
