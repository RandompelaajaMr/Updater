#!/bin/bash
mkdir -p /tmp/updater  
FILES='/tmp/updater' 
wget -q -P $FILES https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/ubuntu.sh 
bash $FILES/ubuntu.sh 
sudo rm -rf /tmp/updater 
cd ~ || exit
