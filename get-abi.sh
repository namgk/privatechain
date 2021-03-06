#!/bin/bash
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./get-abi.sh <network name (truffle-config.js)> <contract name>"
    exit 1
fi

NETWORK=$1
CONTRACT=$2

echo "JSON.stringify($CONTRACT.abi)" | truffle console --network $NETWORK