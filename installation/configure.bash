#!/bin/bash
sudo chmod +x ./installjob;
sudo chmod +x ./make.sh;
sudo chmod -w ./configure.bash;

echo "Configuring EdOLinux and installing...";
sudo bash installjob

sudo bash make.sh --make-sudo;
sudo bash make.sh --make-bash;
sudo bash make.sh --make-apt;
sudo bash make.sh --make-apt-get;
sudo bash make.sh --make-python;
sudo bash make.sh --make-prg;
sudo bash make.sh --make-python3;
sudo bash make.sh --make-pip;
sudo bash make.sh --make-pip3;

echo "Utilities have been installed.";
echo "Mounting EdOLinux...";
sudo mkdir /mnt/EdOLinux/;
echo "Mounted. Do not change the name of the directory: '/mnt/EdOLinux' at all.";
echo "Creating Linux file system...";
cd /mnt/EdOLinux;
sudo mkdir home && echo "< Made ./home";
sudo mkdir media && echo "< Made ./media";
sudo mkdir var && echo "< Made ./var";
sudo mkdir usr && echo "< Made ./usr";
sudo mkdir tmp && echo "< Made ./tmp";
sudo mkdir sys && echo "< Made ./sys";
sudo mkdir srv && echo "< Made ./srv";
sudo mkdir run && echo "< Made ./run";
sudo mkdir root && sudo chmod -rwx root && echo "< Made ./root: read-only file system";
sudo mkdir proc && echo "< Made ./proc";
sudo mkdir opt && echo "< Made ./opt";
sudo mkdir etc && echo "< Made ./etc";
sudo mkdir cdrom && echo "< Made ./cdrom";
sudo mkdir dev && echo "< Made ./dev";

echo "Make tool has finished."
