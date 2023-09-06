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

user=$(whoami)

# Promt to install packages 
read -r -p "Would you like to install packages in the .pkglist? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then yay -Syu --needed - < pkglist.txt
else echo "Skipping Packages"
fi

#echo "Disabling Akonadi"
#akonadictl stop

echo "disabling Baloo"
balooctl disable

echo "Installing and applying polybar customisation"
yay -S polybar
mv -i .config/polybar ~/.config/polybar

echo "Applying Neofetch config"
#Double check that this works
mv -i .config/neofetch ~/.config/neofetch
read -r -p "Do you have an image you would like to use in neofetch? (Nyarch is included in .config/neofetch/Nyarch.png) [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then printf "%s"  "Enter the path to the image (Example: ~/Desktop/Picture.png): " && read image && cp $image ~/.config/neofetch" && sed -i -e 's/THEIMAGEGOESHERE/$image/g' ~/.config/neofetch
else echo "Skipping Neofetch Image"
fi

                                                                                                                                    


#TODO research printf and see if that's better than using echo for user input


