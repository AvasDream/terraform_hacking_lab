#!/bin/bash
apt update >> /home/ubuntu/hello.txt
apt install docker.io -y >> /home/ubuntu/hello.txt
systemctl enable docker >> /home/ubuntu/hello.txt
docker run --rm -d -p 81:80 vulnerables/web-dvwa >> /home/ubuntu/hello.txt
echo "Hello World" > /home/ubuntu/hello.txt >> /home/ubuntu/hello.txt