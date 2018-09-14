# First, we remove the endpoint
Remove-AzureRmCdnEndpoint `
    -EndpointName pluralsightazurerm `
    -ProfileName pluralsightdemo `
    -ResourceGroupName pluralsight-azure-storage-cdn

# Now, remove profile
Remove-AzureRmCdnProfile `
    -ProfileName pluralsightdemo `
    -ResourceGroupName pluralsight-azure-storage-cdn