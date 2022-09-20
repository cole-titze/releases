#!/bin/bash
sudo docker stop data-getter
sudo docker rm data-getter
cat ~/secrets/github_pat | sudo docker login ghcr.io -u cole-titze --password-stdin
sudo docker pull ghcr.io/cole-titze/nhl-data-gatherer:latest
sudo docker run --name data-getter --env-file ~/secrets/.env-data-getter -d ghcr.io/cole-titze/nhl-data-gatherer:latest