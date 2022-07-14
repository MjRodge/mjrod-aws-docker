#!/bin/bash

# upgrade host
sudo yum update -y

# install docker from amazon-linux-extras
sudo amazon-linux-extras install docker -y

# enable services in systemd
sudo service docker start && sudo systemctl enable docker

# post docker install steps
# manage docker as non-root user
sudo usermod -a -G docker ec2-user
