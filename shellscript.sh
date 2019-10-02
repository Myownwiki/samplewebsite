#!/bin/bash
sudo cd /home/ec2-user/nginx-task
sudo docker stop website
sudo docker container rm website

sudo docker build . -t nginx

sudo docker images

sudo docker run -d -p 9000:80 --name website -v $PWD/website:/var/www/html/website:ro nginx nginx
