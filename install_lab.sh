#!/bin/bash
apt update 
apt install docker.io git -y 
systemctl enable docker 
docker run --rm --name hackazon -p 80:80 -d mutzel/all-in-one-hackazon:postinstall supervisord -n
docker run --rm --name dvwa -d -p 81:80 vulnerables/web-dvwa 
docker run --rm --name juice-shop -p 82:3000 -d bkimminich/juice-shop
  docker run --rm -d -p 8080:80 vulnerables/cve-2014-6271

