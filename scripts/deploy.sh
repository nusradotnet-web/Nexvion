#!/usr/bin/env bash
set -e

echo "=== Starting Application Deployment ==="
# Move to root directory
cd "$(dirname "$0")/.."

if [ -f "docker/docker-compose.yml" ]; then
    echo "Deploying via Docker Compose..."
    docker compose -f docker/docker-compose.yml up -d --build
else
    echo "Docker compose file not found. Skipping container launch."
fi

echo "=== Deployment Completed Successfully ==="
