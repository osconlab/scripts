dpkg-reconfigure tzdata
apt update && sudo apt upgrade -y
apt install htop curl -y
chmod +x ./docker.sh
while true; do
    read -p "Do you wish to install docker: ?" yn
    case $yn in
        [Yy]* ) ./docker.sh; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
