#!/bin/bash -e

if test ! $(javac) ; then
    echo "ng"
else
    echo "ok"
fi
