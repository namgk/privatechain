#!/bin/bash
``
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./start-chain.sh <chain data folder>"
    exit 1
fi

DATA_FOLDER=$1

# starting geth and accepting rpc connection
geth --datadir=$DATA_FOLDER --rpc --ws --wsorigins="*"
