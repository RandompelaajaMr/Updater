#!/bin/bash
source /etc/os-release
mkdir -p /tmp/updater
FILES='/tmp/updater'
BRANCH='DEV'
IDLIKE=$(awk '{print $1}' <<< "$ID_LIKE")

if  [[ "$ID" = "debian" ]]; then
	echo 'This is Debian'
	timeout 5
	clear
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/debian.sh
	bash $FILES/debian.sh

elif [[ "$ID" = "ubuntu" ]]; then
	echo 'This is Ubuntu'
	timeout 5
	clear
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/ubuntu.sh
	bash $FILES/ubuntu.sh

elif [[ "$ID" = "arch" ]]; then
	echo 'This is ARCH'
	timeout 5
	clear
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/arch.sh
	bash $FILES/arch.sh

elif [[ "$IDLIKE" = "debian" ]]; then
	echo 'This is based on Debian'
	timeout 5
	clear
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/likedebian.sh 
	bash $FILES/likedebian.sh

elif [[ "$IDLIKE" = "ubuntu" ]]; then
	echo 'This is based on Ubuntu'
	timeout 5
	clear
	wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/$BRANCH/Files/likeubuntu.sh 
	bash $FILES/likeubuntu.sh

else
	echo 'Sowwy, not supported yet :3'
fi

rm -rf /tmp/updater