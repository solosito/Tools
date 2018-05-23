#!/bin/sh

if ping -c1 $1 &> /dev/null
then
    echo "[`date`] Host $1 found"
else
    echo "[`date`] Host $1 not found"
fi
