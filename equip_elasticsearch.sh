#!/bin/sh

#
# Ubuntu Equip 
#  elasticsearch Equip
# Licence: MIT
# see http://www.elasticsearch.org/tutorials/2010/07/02/setting-up-elasticsearch-on-debian.html

curl -OL https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.1.zip
unzip elasticsearch-* && rm -f elasticsearch-*.zip
mv elasticsearch-1.7.1.zip/ elasticsearch/

cd elasticsearch/
bin/plugin -install polyfractal/elasticsearch-inquisitor

# sudo mv elasticsearch/ /usr/local/elasticsearch

# wget --no-check-certificate https://raw.github.com/aglover/ubuntu-equip/master/etc/elasticsearch.init.d

# sudo mv ./elasticsearch.init.d /etc/init.d/elasticsearch
# sudo chmod +x /etc/init.d/elasticsearch
# sudo update-rc.d elasticsearch defaults

# wget --no-check-certificate https://raw.github.com/aglover/ubuntu-equip/master/etc/elasticsearch.yml

# sudo mkdir /etc/elasticsearch
# sudo mv ./elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

# you will need to manually start elasticsearch via /etc/init.d/elasticsearch start
