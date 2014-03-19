UbiServer setup
===============

Script for setting up UbiSmart Server environment.

## Preparation and setup
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
- You will be prompted for the password of the user 'ubi'. We advice to key in 'ubi' as the password.
- You will be prompted for the mysql installation. The password for user root is 'root'. You can change it if you want or keep it (recommended for safe local demo). Then respond yes to all questions except for remote root login that should be kept enabled (no).
- If prompted while installing phpmyadmin: select apache2, then say Yes to use dbconfig-common, use 'root' to all password requests.

For the time being, ubismart framework is not accessible for scripted download. Hence, please go to our basecamp project to download it from Hamdi's post in the demo setup text file. It is composed of 3 tar.gz files to be copied in the ~/Downloads/ folder. Please create this folder if it does not exist. Finally execute the following:
```
~/ubiserver-setup/ubismart-setup.sh
```

## Validation
To check the installation, you may use the following:
- go to <server_ip> in your browser: this should display a "It works!" page, which means apache is working.
- go to <server_ip>/info.php in your browser: this should return a traditional php_info page, which confirms that php is up.
- go to <server_ip>/phpmyadmin in your browser: if you get access to a login page, then mysql and phpmyadmin are both up.
- run 'java -version' to check that Java is installed.
