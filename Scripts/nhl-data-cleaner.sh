#!/bin/bash
sudo docker stop player-getter
sudo docker rm player-getter
sudo docker pull ghcr.io/cole-titze/nhl-player-gatherer:latest
sudo docker run --name player-getter --env-file ~/secrets/.env-player-getter -d ghcr.io/cole-titze/nhl-player-gatherer:latest