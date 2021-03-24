#!/bin/bash
sudo docker system prune
sudo docker rmi $(docker images -aq)

docker-compose up -d

docker push junaidsidat95/trio-task:flask-app
docker push junaidsidat95/trio-task:mysql

