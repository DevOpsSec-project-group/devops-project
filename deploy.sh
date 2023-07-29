#! /usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2
sudo npm install -g pm2
#stop any instance of the application running
pm2 stop devops-project

cd devops-project
#install dependencies
npm install
#create a production ready build of react application
npm run build
#start application
5. pm2 serve build 3001 --name "devopssec-project"