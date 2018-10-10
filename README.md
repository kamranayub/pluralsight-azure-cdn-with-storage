# Microsoft Azure Developer: Implementing Azure CDNs with Storage Pluralsight Course Materials

These materials are for the Pluralsight course **Microsoft Azure Developer: Implementing Azure CDNs with Storage**. The license is Apache 2.0. Static site image content is royalty free and available for any use through Pexels, see `example-site-files/credits.txt`.

## Organization

Course materials are organized by module number and clip names. The `example-site-files` are the files you can upload to your own Azure Storage account to demo with.

## Troubleshooting

### Ensure you have the correct AzureRM and Azure.Storage PowerShell modules installed

If some commands are failing or you don't see what I'm showing during the course, you may have incorrect modules installed that are overwriting newer ones.

Execute the following commands:

```powershell
Get-Module -ListAvailable -Name AzureRM -Refresh
Get-Module -ListAvailable -Name Azure.Storage -Refresh
```

**If you see more than one entry** for each module, it means you may have an old SDK installed. Remove all but the latest versions you installed when walking through the course demos.

### For Azure CLI, set your environment variables

For the Azure CLI demos, you will need to set the following storage account environment variables:

```sh
export export AZURE_STORAGE_ACCOUNT=<storage account name>
export export AZURE_STORAGE_KEY="<storage account key>"
```

Replace the values with actual values from your Azure account. Note the quotes (`"`) are important around the key as it may contain special characters.