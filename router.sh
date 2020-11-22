#!/bin/sh

if [ $1 = "resume" ]; then
    echo $1
    su h -c "DISPLAY=:0 sensible-browser localhost:8080/pause-checklist"
fi

