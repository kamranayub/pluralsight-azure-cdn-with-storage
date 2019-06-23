# First, we remove the endpoint
Remove-AzCdnEndpoint `
    -EndpointName psazurestoragecdn `
    -ProfileName psazurestoragecdn `
    -ResourceGroupName pluralsight-azure-storage-cdn

# Now, remove profile
Remove-AzCdnProfile `
    -ProfileName psazurestoragecdn `
    -ResourceGroupName pluralsight-azure-storage-cdn