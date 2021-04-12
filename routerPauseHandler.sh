#!/bin/sh
routerPath='/Users/i/Documents/github/computer-lifecycle-router/router.sh'


case $1/$2 in
  pre/*)
    echo "Going to $2..."
    exit 0;
    ;;
  post/*)
    echo "Waking up from $2..."
    eval $routerPath" resume" 
   ;;
esac
