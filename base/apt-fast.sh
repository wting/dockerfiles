#!/bin/bash
[[ $(whoami) == "root" ]] || exec sudo "${0}" "${@}"

if ! command -v aptitude &>/dev/null; then
    apt-get install -y aptitude
fi

if ! command -v axel &>/dev/null; then
    aptitude install axel -y
fi

if echo "${@}" | grep -q "upgrade\|install\|dist-upgrade\|full-upgrade"; then
    apt-get --print-uris ${@} \
        | grep -E -o -e "(ht|f)tp://[^\']+" \
        | xargs --max-lines=1 axel --num-connections=2 --output=/var/cache/apt/archives/ -a \
        || aptitude clean
fi

aptitude ${@};
