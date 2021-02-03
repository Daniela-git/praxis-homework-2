#!/usr/bin/env bash

#---git
yum install -y git

#---go
yum install -y golang

#---node and npm
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install -y nodejs

#---vue
npm install -g @vue/cli

#cloning the app repo
git clone https://github.com/jdmendozaa/vuego-demoapp.git

#build the backend
cd vuego-demoapp/server/
go build
mv /home/vagrant/vuego-demoapp/server/vuego-demoapp /shared

#build the frontend
cat <<-'archivo' > ../spa/.env.production.local
VUE_APP_API_ENDPOINT="http://10.0.0.8:4001/api"
archivo
cd ../spa
npm install --unsafe-perm
npm run build
tar -cvf frontend.tar dist
mv /home/vagrant/vuego-demoapp/spa/frontend.tar /shared

