#!/bin/bash
cd ~/source/repos/nhl-game-predictor && git pull
cp -r ~/source/repos/nhl-player-gatherer/* ~/releases/nhl-game-predictor/
export PYTHONPATH="${PYTHONPATH}:~/releases/nhl-game-predictor"
cd ~/releases/nhl-game-predictor && python3 LocalRunning/local_running.py