#!/bin/sh
# Copyright (c) 2020 TippsUndTricks
# All rights reserved

ShellDir="/home"

back_to_script() {
    cd $ShellDir && sh installer.sh
}

echo -e "\033[35m  FiveM Server Install By TippsUndTricks
Bitte Die Schritte Ausführen? \n 
 
1 -	(1)	Apache2 Installieren\n
2 -	(2)	Php-Libapache2 Installieren\n
3 -	(3)	Php-Mbstring Installieren\n
4 -	(4)	Phpmyadmin Installieren\n
5 -	(5)	Apache2 Neu Starten\n
6 -	(6)	xz-utils Installieren\n
7 -	(7)	Screen Installieren\n
8 -	(8)	Ordner Anlegen\n
9 -	(9)	Server Installieren\n"

read anzahl
case $anzahl in

1*)
		echo -e "\033[32m Apache2 Installieren ..\033[33m"
		apt-get install apache2 php mysql-server -y
		sleep 2
		echo -e "\033[32m Apache2 wurde installiert.\n"
		sleep 2
		clear
		back_to_script
;;

2*)
		echo -e "\033[32m Php-Libapache2 Installieren ..\033[33m"
		apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
		sleep 2
		echo -e "\033[32m Php Libapache2 wurde installiert.\n"
		sleep 2
		clear
		back_to_script	
;;

3*)
		echo -e "\033[32m Php-Mbstring Installieren ..\033[33m"
		apt-get install php-mbstring php7.0-mbstring php-gettext -y
		sleep 2
		echo -e "\033[32m Php-Mbstring wurde installiert.\n"
		sleep 2
		clear
		back_to_script	
;;

4*)
		echo -e "\033[32m Phpmyadmin Installieren ..\033[33m"
		apt-get install phpmyadmin -y
		sleep 2
		echo -e "\033[32m Phpmyadmin wurde installiert.\n"
		sleep 2
		clear
		back_to_script	
;;

5*)
		echo -e "\033[32m Apache2 Neu Starten  ..\033[33m"
		service apache2 restart
		sleep 2
		echo -e "\033[32m Apache2 wurde Neu Gestartet.\n"
		sleep 2
		clear
		back_to_script	
;;

6*)
		echo -e "\033[32m xz-utils Installieren  ..\033[33m"
		apt-get install xz-utils -y
		sleep 2
		echo -e "\033[32m xz-utils wurde installiert.\n"
		sleep 2
		clear
		back_to_script	
;;

7*)
		echo -e "\033[32m Screen Installieren  ..\033[33m"
		apt-get install screen -y && apt-get install git -y && apt-get install bash -y
		sleep 2
		echo -e "\033[32m Screen wurde installiert.\n"
		sleep 2
		clear
		back_to_script	
;;

8*)
		echo -e "\033[32m Server Ordner Anlegen...  ..\033[33m"
		mkdir -p /home/FiveM/server 
		cd /
		sleep 2
		mkdir -p /home/FiveM/server-data
		cd /
		sleep 2
		echo -e "\033[32mDie Ordner Wurde Erfolgreich Angelegt.\n"
		sleep 2
		clear
		back_to_script	
;;

9*)
		echo -e "\033[32m Server Installieren..\033[33m"
		cd /home/FiveM/server
		wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2967-2b71645c6a0aa659e8df6ac34a3a1e487e95aedb/fx.tar.xz
		sleep 2
		tar xf fx.tar.xz
		sleep 2
		rm fx.tar.xz
		sleep 2
		git clone https://github.com/TippsUndTricks/cfx-server-data.git /home/FiveM/server-data
		sleep 2
		cd /home/FiveM/server-data && screen bash /home/FiveM/server/run.sh +exec server.cfg
		sleep 2
		echo -e "\033[32m Server installiert und startet.\n"
		cd
		sleep 2
		clear
		back_to_script	
;;
esac