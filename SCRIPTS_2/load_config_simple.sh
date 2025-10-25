#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Config file in the same directory as the script
CONFIG_FILE="$SCRIPT_DIR/env.dev.config"

# Check if file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Config file not found at: $CONFIG_FILE"
    exit 1
fi

echo "Loading configuration from: $CONFIG_FILE"
echo "=========================================="

# Source the config file (loads all variables)
source "$CONFIG_FILE"

# Display all loaded variables
echo "DB_HOST: $DB_HOST"
echo "DB_PORT: $DB_PORT"
echo "DB_NAME: $DB_NAME"
echo "DB_USER: $DB_USER"
echo "DB_PASSWORD: $DB_PASSWORD"
echo ""
echo "APP_NAME: $APP_NAME"
echo "APP_ENV: $APP_ENV"
echo "APP_PORT: $APP_PORT"
echo "APP_DEBUG: $APP_DEBUG"
echo ""
echo "API_KEY: $API_KEY"
echo "API_SECRET: $API_SECRET"
echo ""
echo "LOG_PATH: $LOG_PATH"
echo "DATA_PATH: $DATA_PATH"
echo "=========================================="
echo "All variables loaded successfully!"