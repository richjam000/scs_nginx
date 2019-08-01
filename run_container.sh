#!/bin/bash
set -e

NETWORK=${NETWORK:-"jamnet"}
echo "Check NETWORK($NETWORK) exists. If not: docker network create $NETWORK"
set -x
docker network inspect "$NETWORK" >/dev/null 

docker run -d --name=scs_nginx --network="$NETWORK" --hostname=scs_nginx --restart=always \
--publish 80:80 --publish 443:443 \
-v scs_nginx_certs:/mnt/certs \
gitlab.scsuk.net:5005/scsuk/scs_nginx:1.0

set +x

echo "Now need to install the SSL certificates into volume scs_nginx_config"

