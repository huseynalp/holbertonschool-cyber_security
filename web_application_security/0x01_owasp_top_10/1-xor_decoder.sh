#!/bin/bash

# Check argument
if [ -z "$1" ]; then
  echo "Usage: $0 {xor}HASH"
  exit 1
fi

# Remove {xor} prefix
hash="${1#\{xor\}}"

# Base64 decode and XOR with 0x5A (WebSphere key)
echo "$hash" | base64 -d | \
while IFS= read -r -n1 char; do
  printf "\\$(printf '%03o' $(( $(printf '%d' "'$char") ^ 0x5A )))"
done

echo
