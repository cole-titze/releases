#!/bin/bash
cd ~/source/repos/nhl-player-gatherer && git pull
cd ~/source/repos/nhl-player-gatherer/nhl-player-trigger && dotnet build LocalRunning --configuration Release --output ~/releases/nhl-player-gatherer/
~/releases/nhl-player-gatherer/LocalRunning