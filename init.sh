#!/usr/bin/env bash
 
apt-get -yq update
apt-get -yq install git openjdk-7-jre-headless service-wrapper
 
# Install ElasticSearch
wget -nv https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.20.6.tar.gz
tar -xzf elasticsearch-0.20.6.tar.gz
mv elasticsearch-0.20.6 /usr/local/elasticsearch
rm elasticsearch-0.20.6.tar.gz
 
# Install the service
mkdir /home/vagrant/repos
git clone https://github.com/elasticsearch/elasticsearch-servicewrapper.git /home/vagrant/repos/elasticsearch-servicewrapper
ln -s /home/vagrant/repos/elasticsearch-servicewrapper/service /usr/local/elasticsearch/bin/service

# Install the ElasticSearch browser
#/usr/local/elasticsearch/bin/plugin -q -install mobz/elasticsearch-head
#/usr/local/elasticsearch/bin/plugin -q -install lukas-vlcek/bigdesk
 
# Start ElasticSearch on boot
/usr/local/elasticsearch/bin/service/elasticsearch install

cp -u /vagrant/elasticsearch.yml /usr/local/elasticsearch/elasticsearch.yml
cp -u /vagrant/logging.yml /usr/local/elasticsearch/logging.yml
 
# Start ElasticSearch now
/usr/local/elasticsearch/bin/service/elasticsearch start