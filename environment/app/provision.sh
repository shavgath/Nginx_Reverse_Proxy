
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y && sudo apt-get upgrade -y

# install nginx
sudo apt-get install ruby2.4 ruby2.4-dev ruby-build -y
sudo apt-get install build-essential libgmp-dev libxml2 -y
sudo apt-get install nginx -y
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/ubuntu/app/default /etc/nginx/sites-enabled/default


# Install Node.js & npm
cd /home/ubuntu/app/
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo apt-get install nodejs -y
#sudo npm install -y

sudo systemctl restart nginx

nodejs app.js
