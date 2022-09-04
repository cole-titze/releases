#!/bin/bash
cd ~/source/repos/vegas-odds-getter && git pull
cp -r ~/source/repos/vegas-odds-getter/* ~/releases/vegas-odds-getter/
cd ~/releases/vegas-odds-getter && python3 LocalRunning/local_running.py