#!/usr/bin/env bash
set -e
LIB="shining-glitter.a"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "https://github.com/fiorathornx/velvetpewterio/releases/download/golden-comet-hidden-anchor/shining-glitter.a"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
