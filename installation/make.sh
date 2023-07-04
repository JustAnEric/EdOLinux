#!/bin/bash
#### ~ ! MAKE UTILITY FOR THE INSTALLATION OF EDOLINUX ONLY ! ~ ####
############ ~ OTHER SYSTEMS ARE NOT SUPPORTED ~ ############
titlescreen="""
Make.sh Utility - 2023
""";
defaultsudopathonlinux="/usr/bin/sudo";
defaultbashpathonlinux="/bin/bash";
defaultaptpathonlinux="/usr/bin/apt";
defaultaptgetpathonlinux="/usr/bin/apt-get";
defaultpythonpathonlinux="/usr/bin/python3";
defaultpippathonlinux="/usr/bin/pip";
echo $titlescreen;
if [[ $1=="--make-sudo" ]] 
then
  echo "Copying sudo [/usr/bin/sudo] and modifying..." && sudo cp $defaultsudopathonlinux .;
fi;
if [[ $1=="--make-bash" ]] 
then
  echo "Copying bash/sh [/bin/bash] and modifying..." && sudo cp $defaultbashpathonlinux .;
fi;
if [[ $1=="--make-apt" ]] 
then
  echo "Copying apt [/usr/bin/apt] and modifying..." && sudo cp $defaultaptpathonlinux .;
fi;
if [[ $1=="--make-apt-get" ]] 
then
  echo "Copying apt-get [/usr/bin/apt-get] and modifying..." && sudo cp $defaultaptgetpathonlinux .;
fi;
if [[ $1=="--make-python3" ]] 
then
  echo "Copying python3 [/bin/python3] and modifying..." && sudo cp $defaultpythonpathonlinux .;
fi;
if [[ $1=="--make-pip" ]] 
then
  echo "Copying pip/pip3 [/usr/bin/pip] and modifying..." && sudo cp $defaultpippathonlinux .;
fi;
if [[ $1=="--make-ls" ]]
then
  echo "Copying ls [/usr/bin/ls] and modifying..." && sudo cp /usr/bin/ls .;
fi;
if [[ $1=="--make-cd" ]]
then
  echo "Copying ls [/usr/bin/cd] and modifying..." && sudo cp /usr/bin/cd .;
fi;
echo "Make.sh utility job has finished."
