#!/bin/bash
sudo chmod +x ./installjob;
sudo chmod +x ./make.sh;
sudo chmod -w ./configure.bash;

echo "Configuring EdOLinux and installing...";
sudo bash installjob

sudo bash make.sh --make-sudo;
sudo bash make.sh --make-bash;

echo "Utilities have been installed.";
