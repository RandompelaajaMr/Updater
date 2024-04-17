#!/bin/bash 
source /etc/os-release
mkdir -p /tmp/updater 
BRANCH='DEV'
FILES='/tmp/updater' 
IDLIKE=$(awk '{print $1}' <<< "$ID_LIKE")

if  [[ "$ID" = "debian" ]]; then 
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/debian.sh 
	bash $FILES/debian.sh

elif [[ "$ID" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/ubuntu.sh 
	bash $FILES/ubuntu.sh

elif [[ "$ID" = "arch" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/arch.sh 
	bash $FILES/arch.sh

elif [[ "$IDLIKE" = "debian" ]]; then 
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/likedebian.sh 
	bash $FILES/likedebian.sh

elif [[ "$IDLIKE" = "ubuntu" ]]; then
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/likeubuntu.sh 
	bash $FILES/likeubuntu.sh

else
	echo Sowwy, not supported yet :3
fi
rm -rf /tmp/updater
