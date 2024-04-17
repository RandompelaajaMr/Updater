#!/bin/bash 
source /etc/os-release
mkdir -p /tmp/updater 
FILES='/tmp/updater' 
IDLIKE=$(awk '{print $1}' <<< "$ID_LIKE")

if  [[ "$ID" = "debian" ]]; then 
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/Files/debian.sh 
	bash $FILES/debian.sh 
	exit
elif [[ "$ID" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/Files/ubuntu.sh 
	bash $FILES/ubuntu.sh 
	exit
elif [[ "$ID" = "arch" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/Files/arch.sh 
	bash $FILES/arch.sh 
	exit
elif [[ "$IDLIKE" = "debian" ]]; then 
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/Files/likedebian.sh 
	bash $FILES/likedebian.sh 
	exit
elif [[ "$IDLIKE" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/Files/likeubuntu.sh 
	bash $FILES/likeubuntu.sh 
	exit
else
	echo Sowwy, not supported yet :3
fi
rm -rf /tmp/updater
