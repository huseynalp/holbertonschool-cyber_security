#!/bin/bash
hash=$(sha256sum "$1" | cut -d' ' -f1)
if [ "$hash" = "$2" ]; then echo "$1: OK"; else echo "$1: FAIL"; fi
