#!/bin/bash

echo "Provisioning..."


#installing nodejs & mongodb & redis
sudo apt-add-repository ppa:chris-lea/node.js
sudo apt-add-repository ppa:chris-lea/redis-server

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y nodejs mongodb redis-server git openjdk-7-jre

sudo npm install -g grunt-cli forever

wget http://neo4j.com/artifact.php?name=neo4j-enterprise-2.1.5-unix.tar.gz -O neo4j.tar.gz
tar -xf neo4j.tar.gz
cd neo4j-enterprise-2.1.5
sudo ./bin/neo4j-installer install
sudo sed -i 's/#org\.neo4j\.server\.webserver\.address=0\.0\.0\.0/org.neo4j.server.webserver.address=0.0.0.0/' conf/neo4j-server.properties

echo "Provisioning ended !"
