#!/bin/bash
#### ~ ! MAKE UTILITY FOR THE INSTALLATION OF EDOLINUX ONLY ! ~ ####
############ ~ OTHER SYSTEMS ARE NOT SUPPORTED ~ ############
titlescreen="""
Make.sh Utility - 2023
""";
defaultsudopathonlinux="/usr/bin/sudo";
defaultbashpathonlinux="/bin/bash"
echo $titlescreen;
if [ $1=="--make-sudo" ] then
  echo "Copying sudo [/usr/bin/sudo] and modifying..." && sudo cp $defaultsudopathonlinux .;
fi;
if [ $1=="--make-bash" ] then
  echo "Copying bash/sh [/bin/bash] and modifying..." && sudo cp $defaultbashpathonlinux .;
fi;
echo "Make.sh utility job has finished."
