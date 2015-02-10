if (!(Get-Module -Name Azure)) {
    if (!(Get-Module -ListAvailable | ? Name -eq "Azure")) {
        throw "Azure PowerShell Module is not installed"
    }

    Write-Output "`r`nImporting Azure PowerShell Module"
    Import-Module -Name "Azure"
}

if (!(Get-AzureEnvironment -Name "AzureGovernmentCloud")) {
    Write-Output "`r`nAdding AzureGovernmentCloud Environment"
    Add-AzureEnvironment -Name "AzureGovernmentCloud" -PublishSettingsFileUrl "https://manage.windowsazure.us/publishsettings/index" -ServiceEndpoint "https://management.core.usgovcloudapi.net/" -ManagementPortalUrl "https://manage.windowsazure.us/" -ActiveDirectoryEndpoint "https://login.windows.net" -ActiveDirectoryServiceEndpointResourceId "https://management.core.usgovcloudapi.net/" -StorageEndpoint "core.usgovcloudapi.net"
}

Write-Output "`r`nAzureGovernmentCloud Environment successfully added`r`n"
Get-AzureEnvironment -Name "AzureGovernmentCloud"