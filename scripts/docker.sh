#!/bin/bash


curl https://get.docker.com | sudo bash
sudo usermod -aG docker jenkins


# download to /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# make the file executable
sudo chmod +x /usr/local/bin/docker-compose


sudo systemctl start docker
sudo systemctl enable docker

sudo systemctl restart jenkins




