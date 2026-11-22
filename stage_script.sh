#!/usr/bin/env bash
set -e
TAG="eager-garden-cosmic-harbor"
LIB="flat-dock.a"
URL="https://github.com/jshnganws/dimstadium/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
