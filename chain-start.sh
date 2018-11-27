#!/bin/bash
``
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./chain-start.sh <chain data folder>"
    exit 1
fi

DATA_FOLDER=$1

# starting geth and accepting rpc connection
geth --datadir=$DATA_FOLDER --rpc --ws --wsorigins="*" --unlock '0' --password defaultpassword.txt
