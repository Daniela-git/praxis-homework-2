#!/usr/bin/env bash

#---git
# yum install -y git

#---go
yum install -y golang

#---node and npm
# curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
# yum install -y nodejs

#---vue cli
# npm install -g @vue/cli

#cloning the app repo
git clone https://github.com/jdmendozaa/vuego-demoapp.git

#build the backend
cd vuego-demoapp/server/
go build
mv /home/vagrant/vuego-demoapp/server/vuego-demoapp /shared