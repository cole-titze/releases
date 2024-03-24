#!/bin/bash
sudo docker stop magic-mirror
sudo docker rm magic-mirror
sudo docker pull ghcr.io/cole-titze/magic-mirror-wrapper:latest
sudo docker run --name magic-mirror -p 8082:8082 --restart=always -d ghcr.io/cole-titze/magic-mirror-wrapper:latest
