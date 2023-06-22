#!/bin/bash
sudo docker stop log-loss-getter
sudo docker rm log-loss-getter
sudo docker pull ghcr.io/cole-titze/nhl-log-loss-getter:latest
sudo docker run --name log-loss-getter --env-file ~/secrets/.env-log-loss-getter -d ghcr.io/cole-titze/nhl-log-loss-getter:latest