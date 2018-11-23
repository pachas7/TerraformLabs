#!/bin/bash

function start {
  read -p "What do you want to show in your website?" webpage
  docker build -t terraformlabs .
  docker run --name terraformlabs -d -t terraformlabs
  docker exec -it terraformlabs terraform init /opt/terraformlabs
  docker exec -it terraformlabs terraform apply /opt/terraformlabs -var-file=/opt/terraformlabs/variables.tfvars -var-webpage=$webpage
}

read -p "Did you write the AWS_access in variables.tfvars (y/n)?" choice
case "$choice" in 
  y|Y ) start;;
  n|N ) exit;;
  * ) exit;;
esac



