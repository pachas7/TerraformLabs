#!/bin/bash

function start {
  read -p "What do you want to show in your website?" webpage
  echo -e '\nwebpage="$webpage"' >> variables.tfvars
  docker build -t terraformlabs .
  docker run --name terraformlabs -d -t terraformlabs
  docker exec -it terraformlabs /bin/sh -c 'cd /opt/terraformlabs/ ; terraform init ; terraform apply -var-file=variables.tfvars'
}

read -p "Did you write the AWS_access in variables.tfvars (y/n)?" choice
case "$choice" in 
  y|Y ) start;;
  n|N ) exit;;
  * ) exit;;
esac



