#!/bin/bash

read -p "Put the Aws access_key: " access_key
read -p "Put the Aws secret_key: " secret_key

echo ${access_key} >> ./.aws_access
echo ${secret_key} >> ./.aws_access

docker build -t terraformlabs ./Docker/
docker run --name terraformlabs -d -t terraformlabs
docker exec -it terraformlabs /bin/sh
