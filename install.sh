printf '\033c'
echo "Mankind is dead"
sleep 0.8
echo "Hell is full"
sleep 0.8
echo "Blood is fuel"
sleep 0.8
echo "Kawakijin's Dotfile Deployer loaded..."
echo "Begining dotfile deployment, please wait warmly..."

# Promt to install packages 
read -r -p "Would you like to install packages in your .pkglist? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then yay -Syu --needed - < pkglist.txt
else echo "Skipping Packages"
fi

