sudo chmod +x ./installjob;
sudo chmod +x ./make.sh;
sudo chmod -w ./configure.bash;

echo "Configuring EdOLinux and installing...";
sudo ./installjob;

sudo ./make.sh --make-sudo;
sudo ./make.sh --make-bash;

echo "Utilities have been installed.";
