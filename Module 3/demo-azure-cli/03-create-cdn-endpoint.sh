#!/bin/sh
az cdn endpoint create \
  --name pluralsightazurecli \
  --profile-name pluralsightdemo
  --resource-group pluralsight-azure-storage-cdn \
  --location 'Central US' \
  --origin 'psazurestoragecdn.blob.core.windows.net' \
  --no-http