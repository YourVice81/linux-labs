#!/bin/bash
# Create a shared folder with group ownership and restricted access

FOLDER="shared"
GROUP="devgroup"

echo "Creating folder: $FOLDER"
mkdir -p "$FOLDER"

echo "Creating group: $GROUP (if not exists)"
sudo groupadd -f "$GROUP"

echo "Assigning group ownership..."
sudo chown :$GROUP "$FOLDER"

echo "Setting permissions to 770..."
chmod 770 "$FOLDER"

echo "✔ Shared folder '$FOLDER' secured for group '$GROUP'"
