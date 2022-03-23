#!/bin/bash

#checking sudo rights and asking for password if needed
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

#closing vivaldi
killall vivaldi-bin

#updating apt packages
apt-get update
apt-get upgrade

#updating flatpak packages
flatpak update

#updating Steven Black's hosts file
cd /path/to/StevenBlack-hosts/folder
python3 ./updateHostsFile.py --auto --replace --output /etc --flush-dns-cache --skipstatichosts --nogendata --blacklist ./blacklist --whitelist ./whitelist

#restarting vivaldi as a standalone process and exiting terminal window
sudo -u USERNAME /path/to/standalone.sh /opt/vivaldi/vivaldi
exit
