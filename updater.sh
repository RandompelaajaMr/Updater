#!/bin/bash 
source /etc/os-release
mkdir -p /tmp/updater 
FILES='/tmp/updater' 

if  [[ "$ID" = "debian" ]]; then 
        echo 'its DEBIAN'
elif [[ "$ID" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/Files/ubuntu.sh 
    bash $FILES/ubuntu.sh 
	exit
elif [[ "$ID" = "arch" ]]; then
	echo 'its ARCH'
elif [[ "$ID_LIKE" = "debian" ]]; then 
	echo 'its based on DEBIAN'
elif [[ "$ID_LIKE" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/Files/likeubuntu.sh 
    bash $FILES/likeubuntu.sh 
	exit
elif [[ "$ID_LIKE" = "ubuntu debian" ]]; then
	echo 'its based on UBUNTU AND DEBIAN'
else
	echo Sowwy, not supported yet :3
fi
rm -rf /tmp/updater
