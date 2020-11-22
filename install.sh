#!/bin/bash

if test -f THE_SCRIPT_IS_INSTALLED; then
    echo "Already installed"
    exit 0
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ROUTER_DIR=$DIR"/router.sh"
TEXT_TO_ADD="routerPath='"$ROUTER_DIR"'"

touch "routerPauseHandler.sh"
chmod 755 "routerPauseHandler.sh"
awk 'NR==2{$0="'$TEXT_TO_ADD'\n"$0}1' "routerPauseTemplate.sh" >> "routerPauseHandler.sh"
sudo mv "routerPauseHandler.sh" "/lib/systemd/system-sleep/routerPauseHandler.sh" 

touch THE_SCRIPT_IS_INSTALLED