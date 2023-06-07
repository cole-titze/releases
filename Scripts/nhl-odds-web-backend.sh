#!/bin/bash
sudo docker stop odds-backend
sudo docker pull ghcr.io/cole-titze/nhl-odds-web-backend:latest
sudo docker run --name odds-backend --env-file ~/secrets/.env-backend -p 8080:80 --restart=always -d ghcr.io/cole-titze/nhl-odds-web-backend:latest