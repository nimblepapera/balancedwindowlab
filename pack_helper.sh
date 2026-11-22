#!/usr/bin/env bash
set -e
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/nimblepapera/balancedwindowlab/releases/download/crimson-cedar-gentle-canyon/sparse-pier.a" --output "sparse-pier.a"
g++ -std=c++17 -O2 -pthread main.cpp "sparse-pier.a" -o app && ./app
