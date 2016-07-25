#!/usr/bin/env bash

dir=build
if [[ ! -e $dir ]]; then
    mkdir $dir
elif [[ ! -d $dir ]]; then
    echo "$dir already exists but is not a directory" 1>&2
    exit 1
fi

javac -cp src/ -d build/ src/*.java
