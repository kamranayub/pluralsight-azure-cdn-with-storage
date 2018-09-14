#!/bin/sh
az cdn profile list
az cdn endpoint list \
  --profile-name pluralsightdemo \
  --resource-group pluralsight-azure-storage-cdn 