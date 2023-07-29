#! /usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2
sudo npm install -g pm2
#stop any instance of the application running
pm2 stop devops-project

#remove folder if exists
echo "remove folder if exists"
if [ -d "devops-project" ]; then
   rm -r "devops-project"
fi



cd devops-project
#install dependencies
echo "********npm install"
sudo npm install
echo 'finished npm install'
#create a production ready build of react application
echo '********production buildbuild '
#sudo npm run build
echo 'production build'
#start application
echo 'start application'
#sudo pm2 serve build 3001 --name "devopssec-project"