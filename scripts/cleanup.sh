#!/usr/bin/env bash

echo "=== Starting Environment Cleanup ==="

# Clean dangling Docker resources
if command -v docker >/dev/null 2>&1; then
    echo "Cleaning unused Docker images, containers, and networks..."
    docker system prune -f
fi

echo "=== Cleanup Complete ==="
