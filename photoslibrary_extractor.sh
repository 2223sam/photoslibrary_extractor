#!/bin/bash
cd ~/Downloads
clear
echo "---photoslibrary_extractor by elias---"
echo -e "\e[31mphotoslibrary_extractor \e[34mby \e[32melias"
sleep 2s
echo
echo
echo "Welcome $(whoami)"
sleep 1
echo
echo "the tool helps you to extract photos and videos from a damaged apple photo library (.photoslibrary)"
sleep 3s
echo
echo
echo
echo "press ENTER to continue"
read
clear
echo "please give me your password for root access"
sudo clear
mkdir ~/Downloads/YourLibrary
clear
echo "!!! BACKUP THE LIBRARY ON A USB OR SIMILAR!!!"
sleep 3s
echo
echo
echo
echo "press ENTER to continue"
read
clear
echo "as soon as you press ENTER a new window opens. please drag and drop (copy) your library into it and come back to terminal."
echo "()"
read
open ~/Downloads/YourLibrary
clear
echo "as soon as the library is in the folder press ENTER"
read
clear
mv ~/Downloads/YourLibrary/*.photoslibrary ~/Downloads/YourLibrary/123.photoslibrary
rm -r ~/Downloads/YourLibrary/123.photoslibrary/resources/derivatives/masters/
cd ~/Downloads/YourLibrary/123.photoslibrary/originals
mkdir ~/Downloads/YourMedia/
mkdir ~/Downloads/YourMedia/Photos/
mkdir ~/Downloads/YourMedia/Videos/
clear
echo "now the process can begin. please press ENTER"
read
find . -name '*.jpg' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
find . -name '*.jpeg' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
find . -name '*.png' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
find . -name '*.heic' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
find . -name '*.gif' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
find . -name '*.tiff' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
find . -name '*.raw' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
find . -name '*.mp4' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
find . -name '*.mov' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
find . -name '*.avi' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
find . -name '*.wmv' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
find . -name '*.mpg' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
find . -name '*.swf' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
clear
echo press ENTER to delete the unusable files
read
sudo rm -r ~/Downloads/YourLibrary
clear
echo "FINISH"
sleep 1
echo "press ENTER to open the Folder with the files. stored in Downloads -> Photos"
read
open ~/Downloads/YourMedia/
