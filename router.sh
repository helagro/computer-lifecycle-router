#!/bin/sh

if [ $1 = "resume" ]; then #called when awaken from suspend
    echo $1
    
    #replace with your own scripts
    
    DISPLAY=:0 open "https:/helagro.github.io/my-website-url-router?d=pause-checklist"
fi

