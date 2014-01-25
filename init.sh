#!/bin/bash

#Update apt-get +
sudo apt-get update
 
#Install Java +
sudo apt-get install openjdk-7-jre-headless -y

#Download ElasticSearch .deb if changed
wget -N https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.deb

#Deploy ElasticSearch
sudo dpkg -i --force-downgrade elasticsearch-0.90.10.deb

#Update configuration
sudo cp /vagrant/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
sudo cp /vagrant/logging.yml /etc/elasticsearch/logging.yml

#Restart ElasticSearch
sudo service elasticsearch restart