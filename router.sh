#!/bin/sh

if [ $1 = "resume" ]; then #called when awaken from suspend
    echo $1
    
    #replace with your own scripts
    su h -c "DISPLAY=:0 sensible-browser localhost:9991/pause-checklist"
fi

