ubiserver-setup
===============

Script for setting up UbiSmart Server environment.

This has been tested on a fresh Ubuntu Desktop 12.04 install. To prepare for the setup, you must get access to a linux machine with sudo rights.

First, install git on your machine:
```
sudo apt-get update
sudo apt-get install git
```

Then clone this repository to your machine and execute it:
```
cd ~/
git clone http://github.com/tibotiber/ubiserver-setup.git
~/ubiserver-setup/setup.sh
```
- You will be prompted for the password of the user 'ubi'. We advice to key in 'ubi'as the password.
- You will be prompted for the mysql installation. The password for root is 'root'. You can change it if you want or keep it. Then respond yes to all questions except for remote root login that should be kept enabled.
- If prompted while installing phpmyadmin: select apache2, then say Yes to use dbconfig-common, use 'root' to all required passwords
