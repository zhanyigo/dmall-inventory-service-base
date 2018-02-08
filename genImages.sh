#!/bin/sh

DMALL_DOCKER_REGISTRY='ec2-54-95-48-23.ap-northeast-1.compute.amazonaws.com:5000'
SLUG='zhanyi'
sudo docker build -t $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service .
sudo docker tag $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:latest

sudo docker push $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:latest
