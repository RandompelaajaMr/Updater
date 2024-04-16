#!/bin/sh
FILES='/tmp/updater'
mkdir /tmp/updater
cd $FILES || exit 
pwd 
wget -q https://raw.githubusercontent.com/RandompelaajaMr/Updater/DEV/ubuntu.sh 
bash ./ubuntu.sh 
sudo rm -rf /tmp/updater 
cd ~ || exit
