# Create new CDN profile
New-AzureRmCdnProfile `
    -ProfileName pluralsightdemo `
    -Location 'East US' `
    -Sku Standard_Akamai `
    -ResourceGroupName pluralsight-azure-storage-cdn

# Create a new Azure CDN endpoint within the new
# CDN profile just created
New-AzureRmCdnEndpoint `
    -ProfileName pluralsightdemo `
    -EndpointName pluralsightazurerm `
    -ResourceGroupName pluralsight-azure-storage-cdn `
    -Location 'Central US' `
    -OriginName psazurestoragecdn `
    -OriginHostName psazurestoragecdn.blob.core.windows.net `
    -IsHttpAllowed:$false