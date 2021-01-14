#!/bin/bash

AZURE_STORAGE_ACCOUNT_NAME=xxx
AZURE_STORAGE_ACCOUNT_PASSWORD=yyy

./azure-blob-upload.sh ./sample-data.json sample-data.json xxx yyy

for file in static/*; do
  echo "$(basename "$file")"
  ./azure-blob-upload.sh /"$file" "$file" $AZURE_STORAGE_ACCOUNT_NAME $AZURE_STORAGE_ACCOUNT_PASSWORD
  echo ⭐ "$file" uploaded.
done
