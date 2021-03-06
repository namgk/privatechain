#!/bin/bash
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./mining-start.sh <chain data folder>"
    exit 1
fi

DATA_FOLDER=$1

echo "miner.start()" | geth attach $DATA_FOLDER/geth.ipc