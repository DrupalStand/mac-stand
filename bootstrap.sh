# Update & Upgrade
sudo apt-get update
sudo apt-get upgrade

# PHP
sudo apt-add-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php7.1 php7.1-cli php7.1-common php7.1-json php7.1-opcache php7.1-mysql php7.1-mbstring php7.1-mcrypt php7.1-zip php7.1-fpm php7.1-curl php7.1-xml php7.1-zip -y
#sudo apt install zip unzip php7.0-zip -y

# Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker start

# Node
sudo apt-get install nodejs -y
sudo apt-get install npm -y

## Give Docker User Sudo access.
usermod -aG sudo docker
