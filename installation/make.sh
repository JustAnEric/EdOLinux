#### ~ ! MAKE UTILITY FOR THE INSTALLATION OF EDOLINUX ONLY ! ~ ####
############ ~ OTHER SYSTEMS ARE NOT SUPPORTED ~ ############
titlescreen="""
Make.sh Utility - 2023
""";
defaultsudopathonlinux="/usr/bin/sudo";
echo $titlescreen;
if [ $1=="--make-sudo" ] then
  echo "Copying sudo [/usr/bin/sudo] and modifying..." && sudo cp $defaultsudopathonlinux .;
fi;
echo "Make.sh utility job has finished."
