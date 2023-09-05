#!/bin/sh
printf '\033c'
echo "Mankind is dead"
sleep 0.8
echo "Hell is full"
sleep 0.8
echo "Blood is fuel"
sleep 0.8
echo "Kawakijin's Dotfile Deployer loaded..."
echo "Begining dotfile deployment, please wait warmly..."

# Put the git clone thing here!!!

# Promt to install packages 
read -r -p "Would you like to install packages in the .pkglist? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then yay -Syu --needed - < pkglist.txt
else echo "Skipping Packages"
fi

echo "Disabling Akonadi"
akonadictl stop && 

echo "disabling Baloo"
balooctl disable

echo "Installing and applying polybar customisation"
yay -S polybar
mv -i .config/polybar ~/.config

echo "Applying Neofetch config"

#echo -n "Enter your username: " 
#read username


#TODO research printf and see if that's better than using echo for user input
#TODO Add a neofetch file to /.config/neofetch             then add it to this script
#TODO find a way to make the script prompt for neofetch image, if yes then use image provided by user, if no skip, if nyarch then nyarch if else then skip


