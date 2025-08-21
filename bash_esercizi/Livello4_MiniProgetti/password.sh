#!/bin/bash
password=$(date +%s%N | sha256sum | base64 | head -c 12)
echo "Password generata: $password"
