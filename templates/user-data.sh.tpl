#!/bin/bash

apt-get update
apt-get install apache2 -y
echo ${mensaje} > /var/www/html/index.html

service apache2 start
