#!/bin/bash

apt-get install apache2 -y
echo ${mensaje} > /var/www/html/inde.html

service apache2 start
