# Microsoft Azure Developer: Implementing Azure CDNs with Storage Pluralsight Course Materials

These materials are for the Pluralsight course **[Microsoft Azure Developer: Implementing Azure CDNs with Storage](http://bit.ly/PSAzureStorageCDN)**. The license is Apache 2.0. Static site image content is royalty free and available for any use through Pexels, see `example-site-files/credits.txt`.

## Table of Contents

1. [Organization](#organization)
1. [Errata](#errata)
1. [Updates](#updates)
1. [Troubleshooting](#troubleshooting)
1. [Additional Resources](#additional-resources)

## Organization

Course materials are organized by module number and clip descriptions. The `example-site-files` are the files you can upload to your own Azure Storage account to demo with.

## Errata

*None yet*

Please report course issues using the [Issues](https://github.com/kamranayub/pluralsight-azure-cdn-with-storage/issues) page or the Pluralsight discussion page.

## Updates

- **Jun 2019**
  - 🛠 _Enhancement_: Update content to use `Az` PowerShell module
  - 🐛 _Fixed_: Update Module 2, Clip 6 to demo new Billing portal experience

- **Oct 2018**
  - Initial release 🎉

## Common Issues

### Creating the Demo Storage Account

The demo storage account used is a General Purpose v2 Storage Account, see [Quickstart: Create a storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account?tabs=portal)

You can then upload the contents of the `example-site-files` folder to a blob container named `staticsite`. After that, you can follow along with the demos.

### Ensure you are on the right subscription for automation

To manage the storage account and other resources we create in the demos, you will need to ensure you have the right Azure Subscription set by default when running commands. You only need to do this if you have multiple subscriptions.

In Azure PowerShell SDK:

    Set-AzContext -SubscriptionId <Subscription ID>

In Azure CLI:

    az account set -s <Subscription ID>

### Ensure you have the correct Az and Azure.Storage PowerShell modules installed

If some commands are failing or you don't see what I'm showing during the course, you may have incorrect modules installed that are overwriting newer ones.

Execute the following commands:

```powershell
Get-Module -ListAvailable -Name Az -Refresh
Get-Module -ListAvailable -Name Azure.Storage -Refresh
```

**If you see more than one entry** for each module, it means you may have an old SDK installed. Remove all but the latest versions you installed when walking through the course demos.

### For Azure CLI, set your environment variables

For the Azure CLI demos, you will need to set the following storage account environment variables:

```sh
export AZURE_STORAGE_ACCOUNT=<storage account name>
export AZURE_STORAGE_KEY="<storage account key>"
```

Replace the values with actual values from your Azure account. Note the quotes (`"`) are important around the key as it may contain special characters.

## Additional Resources

### Azure Storage

- [Configure and Manage Azure Storage course][psazurestorage]

[psazurestorage]: https://app.pluralsight.com/library/courses/microsoft-azure-creating-configuring-storage-accounts/table-of-contents

### Tools and SDKs

- [Azure Tools and SDKs][azuretools]
- [OpenSSL Binaries][getopenssl]
- [Install Azure PowerShell][psinstall]
- [Az.Cdn PowerShell Docs][pscdndocs]
- [Installing Azure CLI][cliinstall]
- [Microsoft REST API Browser][restbrowser]
- [Working With ARM Templates][armtemplates]

[azuretools]: https://azure.microsoft.com/en-us/tools/
[getopenssl]: https://bit.ly/GetOpenSSL
[psinstall]: https://docs.microsoft.com/en-us/powershell/azure/install-az-ps
[cliinstall]: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest
[armtemplates]: https://bit.ly/azurermtemplates
[restbrowser]: https://bit.ly/azureapidocs
[pscdndocs]: http://bit.ly/AzureRMCdn

### Azure CDN

- [Rules Engine Reference][cdnrules]

[cdnrules]: https://bit.ly/AzureCDNRulesEngine
