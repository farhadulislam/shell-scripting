#!/bin/bash

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to print horizontal line
print_line() {
    echo -e "${CYAN}================================================================${NC}"
}

print_line
echo -e "${BLUE}[INFO] Running v3 of the script${NC}"
echo -e "${YELLOW}[INFO] Script requires a password to decrypt the config file${NC}"
print_line

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENCRYPTED_CONFIG="$SCRIPT_DIR/env.dev.config.enc"
DECRYPTED_CONFIG="/tmp/env.dev.config"

if [ ! -f "$ENCRYPTED_CONFIG" ]; then
    print_line
    echo -e "${RED} Error: Encrypted config file not found!${NC}"
    print_line
    exit 1
fi

print_line
echo -e "${BLUE}🔓 Decrypting configuration...${NC}"
print_line

# Maximum number of attempts
MAX_ATTEMPTS=3
ATTEMPT=1
DECRYPTION_SUCCESS=0

# Try decryption with up to 3 attempts
while [ $ATTEMPT -le $MAX_ATTEMPTS ]; do
    echo -e "${YELLOW}Attempt $ATTEMPT of $MAX_ATTEMPTS${NC}"
    
    # Decrypt (will prompt for password)
    openssl enc -aes-256-cbc -d -in "$ENCRYPTED_CONFIG" -out "$DECRYPTED_CONFIG" -pbkdf2 2>/dev/null
    
    if [ $? -eq 0 ] && [ -s "$DECRYPTED_CONFIG" ]; then
        # Decryption successful and file is not empty
        print_line
        echo -e "${GREEN}✅ Decryption successful!${NC}"
        print_line
        DECRYPTION_SUCCESS=1
        break
    else
        # Decryption failed
        rm -f "$DECRYPTED_CONFIG"
        
        if [ $ATTEMPT -lt $MAX_ATTEMPTS ]; then
            print_line
            echo -e "${RED} Incorrect password. Please try again.${NC}"
            print_line
            ((ATTEMPT++))
        else
            print_line
            echo -e "${RED} Error: Failed to decrypt after $MAX_ATTEMPTS attempts!${NC}"
            echo -e "${RED}🔒 Access denied. Exiting...${NC}"
            print_line
            exit 1
        fi
    fi
done

# Additional check to ensure decryption was successful
if [ $DECRYPTION_SUCCESS -eq 0 ]; then
    print_line
    echo -e "${RED} Error: Decryption did not complete successfully!${NC}"
    print_line
    exit 1
fi

print_line
echo -e "${GREEN} Loading configuration...${NC}"
print_line

# Source the config
source "$DECRYPTED_CONFIG"

# Display variables
echo -e "${GREEN}DB_HOST:${NC} $DB_HOST"
echo -e "${GREEN}DB_PORT:${NC} $DB_PORT"
echo -e "${GREEN}DB_NAME:${NC} $DB_NAME"
echo -e "${GREEN}DB_USER:${NC} $DB_USER"
echo -e "${GREEN}DB_PASSWORD:${NC} ${YELLOW}[HIDDEN]${NC}"
echo ""
echo -e "${GREEN}APP_NAME:${NC} $APP_NAME"
echo -e "${GREEN}APP_ENV:${NC} $APP_ENV"
echo -e "${GREEN}APP_PORT:${NC} $APP_PORT"

print_line
echo -e "${GREEN} Configuration loaded!${NC}"
print_line

# Clean up
rm -f "$DECRYPTED_CONFIG"

print_line
echo -e "${GREEN} Temporary decrypted file removed!${NC}"
print_line