#!/bin/bash

docker-compose up -d

docker push junaidsidat95/trio-task:flask-app
docker push junaidsidat95/trio-task:mysql

