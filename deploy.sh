#! /usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2
sudo npm install -g pm2
#stop any instance of the application running
#pm2 stop devops-project

cd devops-project
current_dir=$(dirname "$(realpath "$0")")
echo "current directory: $current_dir"

#install dependencies
sudo npm install
echo  finished npm install
#create a production ready build of react application
#sudo echo '********           production build    ******************** '
#sudo npm run build
#sudo echo '***************   end production build  *****************'
#start application
#sudo echo 'start application'
#sudo pm2 serve build 3001 --name "devopssec-project"
echo "successful deployment"