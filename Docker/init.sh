#!/bin/bash

start {
  docker build -t terraformlabs .
  docker run --name terraformlabs -d -t terraformlabs
  docker exec -it terraformlabs /bin/sh
}

read -p "Did you write the AWS_access in variables.tfvars (y/n)?" choice
case "$choice" in 
  y|Y ) start;;
  n|N ) exit;;
  * ) exit;;
esac



