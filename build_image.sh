#!/bin/bash
set -e
TAG="1.0"
IMAGE="gitlab.scsuk.net:5005/scsuk/scs_nginx:$TAG"
set -x
cp /etc/yum.repos.d/scs_repo.repo yum.repos.d 
docker build -t "$IMAGE" . 
docker push "$IMAGE"
set +x
