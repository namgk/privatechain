#!/bin/bash
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: ./chain-create.sh <chain data folder>"
    exit 1
fi

DATA_FOLDER=$1

rm -rf $DATA_FOLDER

geth --datadir=$DATA_FOLDER init genesis.json

# create first new user
echo ">>>>>>>>>>>>> creating a new user"
ADDRESS_LINE=$(geth --datadir $DATA_FOLDER --password defaultpassword.txt account new 2>/dev/null | grep Address)
ADDRESS_LINE=${ADDRESS_LINE#*\{}
ADDRESS_LINE=${ADDRESS_LINE%\}}

ADDRESS=$ADDRESS_LINE

# unlock the user
echo ">>>>>>>>>>>>> unlocking newly created user: $ADDRESS"
geth --datadir $DATA_FOLDER --rpc --ws --wsorigins="*" --unlock $ADDRESS --password defaultpassword.txt
