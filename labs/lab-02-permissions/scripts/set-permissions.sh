#!/bin/bash
# Set 644 permissions for all .txt files in the current directory

echo "Setting permissions to 644 for all .txt files..."

for file in *.txt; do
  if [ -f "$file" ]; then
    chmod 644 "$file"
    echo "✔ $file updated"
  fi
done

echo "Done."
