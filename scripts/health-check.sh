#!/usr/bin/env bash

TARGET_URL="${1:-http://localhost:8080}"
MAX_RETRIES=5
SLEEP_TIME=3

echo "=== Running Health Check against: $TARGET_URL ==="

for ((i=1; i<=MAX_RETRIES; i++)); do
    echo "Attempt $i/$MAX_RETRIES..."
    HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$TARGET_URL" || true)

    if [ "$HTTP_STATUS" -eq 200 ] || [ "$HTTP_STATUS" -eq 302 ]; then
        echo " SUCCESS: Application is healthy! (HTTP Status: $HTTP_STATUS)"
        exit 0
    fi
    sleep $SLEEP_TIME
done

echo " ERROR: Health check failed for $TARGET_URL (Status: $HTTP_STATUS)"
exit 1
