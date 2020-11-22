#!/bin/bash

if test -f THE_SCRIPT_IS_INSTALLED; then
    echo "Already installed"
    exit 0
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ROUTER_DIR=$DIR"/router.sh"
TEXT_TO_ADD="routerPath="$ROUTER_DIR
awk 'NR==2{$0="'$TEXT_TO_ADD'\n"$0}1' $DIR"/pause-script.sh" >> $DIR"/pause-script.sh"

#touch THE_SCRIPT_IS_INSTALLED