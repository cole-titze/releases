#!/bin/bash
cd ~/source/repos/nhl-data-gatherer && git pull
cd ~/source/repos/nhl-data-gatherer && dotnet build LocalRunning --configuration Release --output ~/releases/nhl-data-gatherer/
~/releases/nhl-data-gatherer/LocalRunning