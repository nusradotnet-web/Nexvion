#!/usr/bin/env bash
set -e

BACKUP_DIR="../backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "=== Starting Backup Process ==="
mkdir -p "$BACKUP_DIR"

# Example: Archive application configuration and scripts
tar -czf "$BACKUP_DIR/nexvion_backup_$TIMESTAMP.tar.gz" ../scripts ../docker ../kubernetes 2>/dev/null || true

echo "=== Backup saved to: $BACKUP_DIR/nexvion_backup_$TIMESTAMP.tar.gz ==="
