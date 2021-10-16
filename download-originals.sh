#!/usr/bin/env bash

function dodownload {
    aria2c "$1" -o "$2" || wget "$1" -O "$2"
}

function dlvid {
    dodownload "https://maxkaye.s3.wasabisys.com/upload/$1" "test-$1"
}

dlvid r1.m4v
dlvid r2.m4v
dlvid r3.m4v
dlvid r4.m4v
