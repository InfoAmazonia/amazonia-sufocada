#!/bin/bash
#exporta variaveis no .env
FILE=/.env
if test -f "$FILE"; then
    for i in $(cat /.env)
    do
        export $i
    done
fi
