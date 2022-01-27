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

#restarting vivaldi as a standalone process and exiting terminal window
sudo -u USERNAME /path/to/standalone.sh /opt/vivaldi/vivaldi
exit
