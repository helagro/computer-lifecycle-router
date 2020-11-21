#!/bin/sh
case $1/$2 in
  pre/*)
    echo "Going to $2..."
    exit 0;
    # Place your pre suspend commands here, or `exit 0` if no pre suspend action required
    ;;
  post/*)
    echo "Waking up from $2..."
    # Place your post suspend (resume) commands here, or `exit 0` if no post suspend action required
    su h -c "DISPLAY=:0 sensible-browser localhost:8080/pause-checklist" 
   ;;
esac
echo "ran pause-script"
