#!/usr/bin/env bash
set -e
REPO="tendrszfehw/pystapledfur"
LIB="robust-sleet.a"
URL="https://github.com/${REPO}/releases/download/golden-comet-frosty-delta/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -O2 -pthread -std=c++17 main.cpp "$LIB" && ./app
