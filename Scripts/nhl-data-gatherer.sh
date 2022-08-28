#!/bin/bash
~/source/repos/nhl-data-gatherer git pull
~/source/repos/nhl-data-gatherer dotnet build LocalRunning --configuration Release --output ~/releases/nhl-data-gatherer/
~/releases/nhl-data-gatherer/LocalRunning