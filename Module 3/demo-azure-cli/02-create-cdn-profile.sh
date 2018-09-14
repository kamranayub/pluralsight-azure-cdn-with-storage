#!/bin/sh
az cdn profile create \
  --name pluralsightdemo \
  --resource-group pluralsight-azure-storage-cdn \
  --location 'East US' \
  --sku Standard_Akamai