#!/bin/sh
az cdn endpoint update \
  --name pluralsightazurecli \
  --profile-name pluralsightdemo \
  --resource-group pluralsight-azure-storage-cdn \
  --origin-host-header 'psazurestoragecdn.blob.core.windows.net'