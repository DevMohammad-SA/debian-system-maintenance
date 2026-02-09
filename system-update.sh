#!/bin/bash

# Debian Full System Update Script
# This script performs a complete system update including: 
# - Package list update
# - Package upgrades
# - Distribution upgrades
# - Cleanup of unused packages

# Log file location
LOGFILE="/var/log/system-update.log"

# Add timestamp to log
echo "========================================" >> "$LOGFILE"
echo "System Update Started:  $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOGFILE"
echo "========================================" >> "$LOGFILE"

# Update package lists
echo "Updating package lists..." >> "$LOGFILE"
apt-get update >> "$LOGFILE" 2>&1

echo "========================================" >> "$LOGFILE"

# Upgrade installed packages
echo "Upgrading packages..." >> "$LOGFILE"
apt-get upgrade -y >> "$LOGFILE" 2>&1

echo "========================================" >> "$LOGFILE"

# Perform distribution upgrade (handles dependencies better)
echo "Performing distribution upgrade..." >> "$LOGFILE"
apt-get dist-upgrade -y >> "$LOGFILE" 2>&1

echo "========================================" >> "$LOGFILE"

# Remove unused packages
echo "Removing unused packages..." >> "$LOGFILE"
apt-get autoremove -y >> "$LOGFILE" 2>&1

echo "========================================" >> "$LOGFILE"

# Clean up apt cache
echo "Cleaning apt cache..." >> "$LOGFILE"
apt-get autoclean >> "$LOGFILE" 2>&1

echo "========================================" >> "$LOGFILE"
echo "System Update Completed: $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOGFILE"
echo "========================================" >> "$LOGFILE"
echo "" >> "$LOGFILE"

exit 0
