#!/bin/bash
~/source/repos/nhl-data-gatherer git pull
~/source/repos/nhl-data-gatherer dotnet build LocalRunning --configuration Release --output ~/releases/nhl-player-gatherer/
~/releases/nhl-player-gatherer/LocalRunning