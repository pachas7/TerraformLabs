In this folder we have the docker files to have a quick terraform environment with the repository cloned in the directory /opt/terraformlabs/

**COMMANDS

  docker build -t terraformlabs . && \
  docker run --name terraformlabs -d -t terraformlabs && \
  docker exec -it terraformlabs /bin/sh
