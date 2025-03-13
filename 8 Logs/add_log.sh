#!/usr/bin/bash

LOG_FILE="/mnt/c/Users/benja/Desktop/exam linux/8 Logs/logs"

USER=$(whoami)
TIME=$(date '+%Y-%m-%d %H:%M:%S')

echo "Utilisateur: $USER - Heure: $TIME" >> "$LOG_FILE"
