#!/bin/bash
sudo docker stop nhl-backend
cd ~/source/repos/nhl-odds-web-backend && git pull
sudo docker build -t coledev/nhl-backend .
sudo docker run -p 8080:80 -d --name nhl-backend coledev/nhl-backend