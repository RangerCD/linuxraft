#!/usr/bin/env bash

CURL_CMD="curl -L -o"
WGET_CMD="wget -O"
DOWNLOAD_CMD=""

function check() {
    curl -V > /dev/null 2>&1
    if [[ "$?" == "0" ]]; then
        DOWNLOAD_CMD=${CURL_CMD}
    else
        wget -V > /dev/null 2>&1
        if [[ "$?" == "0" ]]; then
            DOWNLOAD_CMD=${WGET_CMD}
        else
            echo "neither curl nor wget is available"
            return 1
        fi
    fi
}

check

function download() {
    ${DOWNLOAD_CMD} "$2" "$1"
}
