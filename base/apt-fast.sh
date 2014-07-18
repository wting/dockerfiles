#!/bin/sh
if echo "$@" | grep -q "upgrade\|install\|dist-upgrade"; then
    cd /var/cache/apt/archives/;
    apt-get -y --print-uris $@ | egrep -o -e "(ht|f)tp://[^\']+" > apt-fast.list && cat apt-fast.list | xargs -l1 axel -a
    aptitude $@;
else
    aptitude $@;
fi
