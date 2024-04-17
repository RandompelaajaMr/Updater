#!/bin/bash 
source /etc/os-release
mkdir -p /tmp/updater 
FILES='/tmp/updater' 
IDLIKE=$(awk '{print $1}' <<< "$ID_LIKE")

if  [[ "$ID" = "debian" ]]; then 
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/main/Files/debian.sh 
	bash $FILES/debian.sh 
	break
elif [[ "$ID" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/main/Files/ubuntu.sh 
	bash $FILES/ubuntu.sh 
	break
elif [[ "$ID" = "arch" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/main/Files/arch.sh 
	bash $FILES/arch.sh 
	break
elif [[ "$IDLIKE" = "debian" ]]; then 
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/main/Files/likedebian.sh 
	bash $FILES/likedebian.sh 
	break
elif [[ "$IDLIKE" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/main/Files/likeubuntu.sh 
	bash $FILES/likeubuntu.sh 
	break
else
	echo Sowwy, not supported yet :3
fi
rm -rf /tmp/updater
