# Get existing CDN endpoint
$Endpoint = Get-AzureRmCdnEndpoint `
    -EndpointName pluralsightazurerm `
    -ProfileName pluralsightdemo `
    -ResourceGroupName pluralsight-azure-storage-cdn

# Set new properties and update
$Endpoint.OriginHostHeader = "psazurestoragecdn.blob.core.windows.net"
$Endpoint | Set-AzureRmCdnEndpoint