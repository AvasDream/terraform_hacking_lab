#!/bin/bash
apt update
apt install docker.io -y 
systemctl enable docker 
docker run --rm -it -p 80:80 vulnerables/web-dvwa