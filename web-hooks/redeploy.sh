#!/bin/bash
echo 'executing hook...'
docker pull thawedbuffalosolutions/docker-node-app:latest
docker stop docker-node-app
docker system prune -f
docker run -p 3000:3000 -d --name=docker-node-app thawedbuffalosolutions/docker-node-app:latest