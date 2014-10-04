#!/bin/bash

echo "Provisioning..."


#installing nodejs & mongodb & redis
sudo apt-add-repository ppa:chris-lea/node.js
sudo apt-add-repository ppa:chris-lea/redis-server

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y nodejs mongodb redis-server

sudo npm install -g grunt-cli forever oauthd

echo "Provisioning ended !"
