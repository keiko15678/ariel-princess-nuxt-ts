#!/bin/bash

AZURE_STORAGE_ACCOUNT_NAME=xxx
AZURE_STORAGE_ACCOUNT_PASSWORD=yyy

./azure-blob-upload.sh ./sample-data.json sample-data.json xxx yyy

OUTPUT_STR=""
for file in static/*; do
  echo "$(basename "$file")"
  ./azure-blob-upload.sh /"$file" "$file" $AZURE_STORAGE_ACCOUNT_NAME $AZURE_STORAGE_ACCOUNT_PASSWORD
  OUTPUT_STR+="⭐ "$file" uploaded.\n"
done

printf $OUTPUT_STR
echo 🤘 Deploy Azure Blob Storage complete.
