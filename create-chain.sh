#!/bin/bash
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./create-chain.sh <chain data folder>"
    exit 1
fi

DATA_FOLDER=$1

geth --datadir=$DATA_FOLDER init genesis.json
