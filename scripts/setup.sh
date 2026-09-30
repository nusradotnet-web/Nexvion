#!/usr/bin/env bash
set -e

echo "=== [1/3] Checking System Prerequisites ==="
command -v git >/dev/null 2>&1 || { echo "Git is not installed. Installing..."; sudo apt update && sudo apt install -y git; }
command -v docker >/dev/null 2>&1 || { echo "Docker is not installed. Please install Docker first."; exit 1; }

echo "=== [2/3] Checking Docker Service Status ==="
if ! docker info >/dev/null 2>&1; then
    echo "Docker service is not running. Starting Docker..."
    sudo service docker start || true
fi

echo "=== [3/3] Operational Environment Ready! ==="
