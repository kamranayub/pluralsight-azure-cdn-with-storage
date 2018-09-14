#!/bin/sh
az cdn endpoint delete \
  --name pluralsightazurecli \
  --profile-name pluralsightdemo \
  --resource-group pluralsight-azure-storage-cdn

az cdn profile delete \
  --name pluralsightdemo \
  --resource-group pluralsight-azure-storage-cdn