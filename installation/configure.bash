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
sudo bash make.sh --make-ls;
sudo bash make.sh --make-cd;

echo "Utilities have been installed.";
echo "Mounting EdOLinux...";
sudo mkdir /mnt/EdOLinux/;
echo "Mounted. Do not change the name of the directory: '/mnt/EdOLinux' at all.";
echo "[EdOLinux Installer]Installing...";
echo "Creating Linux file system...";
sudo mkdir /mnt/EdOLinux/home && echo "< Made ./home";
sudo mkdir /mnt/EdOLinux/media && echo "< Made ./media";
sudo mkdir /mnt/EdOLinux/var && echo "< Made ./var";
sudo mkdir /mnt/EdOLinux/usr && echo "< Made ./usr";
sudo mkdir /mnt/EdOLinux/tmp && echo "< Made ./tmp";
sudo mkdir /mnt/EdOLinux/sys && echo "< Made ./sys";
sudo mkdir /mnt/EdOLinux/srv && echo "< Made ./srv";
sudo mkdir /mnt/EdOLinux/run && echo "< Made ./run";
sudo mkdir /mnt/EdOLinux/root && sudo chmod -rwx /mnt/EdOLinux/root && echo "< Made ./root: read-only file system";
sudo mkdir /mnt/EdOLinux/proc && echo "< Made ./proc";
sudo mkdir /mnt/EdOLinux/opt && echo "< Made ./opt";
sudo mkdir /mnt/EdOLinux/etc && echo "< Made ./etc";
sudo mkdir /mnt/EdOLinux/cdrom && echo "< Made ./cdrom";
sudo mkdir /mnt/EdOLinux/dev && echo "< Made ./dev";
sudo mkdir /mnt/EdOLinux/bin && echo "< Made ./bin";

echo "Make tool has finished.";

echo "Copying files...";
sudo cp ./apt /mnt/EdOLinux/bin;
sudo cp ./apt-get /mnt/EdOLinux/bin;
sudo cp ./bash /mnt/EdOLinux/bin;
sudo cp ./pip /mnt/EdOLinux/bin;
sudo cp ./python3 /mnt/EdOLinux/bin;
sudo cp ./sudo /mnt/EdOLinux/bin;

echo "Finished copying files.";
echo "Making sure files are up to date...";
sudo chmod +x /mnt/EdOLinux/bin/* && sudo chown root:root /mnt/EdOLinux/bin/sudo && sudo chmod 4755 /mnt/EdOLinux/bin/sudo;
echo "Compiling start script...";
sudo cp ./startedobox /mnt/EdOLinux;
echo "Compiled!";
echo "Process finished, thank you for using EdOLinux!";
