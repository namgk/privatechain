#!/bin/bash
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./start-mist.sh <chain data folder>"
    exit 1
fi

DATA_FOLDER=$1

mist –rpc $DATA_FOLDER/geth.ipc
