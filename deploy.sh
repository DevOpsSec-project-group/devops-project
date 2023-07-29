#! /usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2
sudo npm install -g pm2
#stop any instance of the application running
#pm2 stop devops-project




sudo cd devops-project
sudo echo "devops-project"
#install dependencies
sudo echo "********npm install"
sudo npm install
sudo echo  finished npm install
#create a production ready build of react application
sudo echo '********          production build    ******************** '
sudo npm run build
sudo echo '***************   end production build  *****************'
#start application
sudo echo 'start application'
#sudo pm2 serve build 3001 --name "devopssec-project"