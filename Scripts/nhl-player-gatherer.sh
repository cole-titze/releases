#!/bin/bash
sudo docker stop player-getter
sudo docker rm player-getter
cat ~/secrets/github_pat | sudo docker login ghcr.io -u cole-titze --password-stdin
sudo docker pull ghcr.io/cole-titze/nhl-player-gatherer:latest
sudo docker run --name player-getter --env-file ~/secrets/.env-player-getter -d ghcr.io/cole-titze/nhl-player-gatherer:latest