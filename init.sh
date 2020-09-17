echo "install tools ..."
sudo apt-get update
sudo apt-get install git
sudo apt-get install curl
./install_nvm.sh

echo 'Install projects'
echo "export GITLAB_ACC=esp_hieu_gitlab:bE1DYspxjzSxaujxzhjn" >> ~/.bashrc
cd /srv/
git clone https://$GITLAB_ACC@gitlab.com/espxweb/esp-xcloud-vod.git
git clone https://$GITLAB_ACC@gitlab.com/espxng/esp-ng-web.git
git clone https://$GITLAB_ACC@gitlab.com/espxcloud/esp-webservices.git
git clone https://$GITLAB_ACC@gitlab.com/espxmm2/esp-mm2-webapp.git

sudo chmod 700 /srv/dev-tools/ssh
sudo chmod 600 /srv/dev-tools/ssh/*

mkdir wpvip-projects
cd wpvip-projects;

git clone https://karrot:00e91e008b68ab3462ef3bd4d7cdd790d9e26b54@github.com/wpcomvip/fb-forwardtogether.git
cd fb-forwardtogether
git config --local user.email 's4.huynh@wearesection.com'
git config --local user.name 's4huynh'

cd ..
git clone https://karrot:00e91e008b68ab3462ef3bd4d7cdd790d9e26b54@github.com/wpcomvip/facebook-rethinkcrossborder.git
cd facebook-rethinkcrossborder
git config --local user.email 's4.huynh@wearesection.com'
git config --local user.name 's4huynh'

echo 'Mongo tools';
sudo apt-get update
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get install -y mongodb-clients

# sudo apt-get install --reinstall xserver-xorg-input-all
#  sudo apt-get install xserver-xorg-core