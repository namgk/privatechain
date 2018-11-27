#!/bin/bash
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./migrate.sh <network name as seen in truffle-config.js>"
    exit 1
fi

NETWORK=$1

rm -rf build
truffle migrate --network $NETWORK
