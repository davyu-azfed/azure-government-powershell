if (!(Get-Module -Name Azure)) {
    if (!(Get-Module -ListAvailable | ? Name -eq "Azure")) {
        throw "Azure PowerShell Module is not installed"
    }

    Import-Module -Name "Azure"
}

if (!(Get-AzureEnvironment -Name "AzureGovernmentCloud")) {
    Add-AzureEnvironment -Name "AzureGovernmentCloud" -PublishSettingsFileUrl "https://manage.windowsazure.us/publishsettings/index" -ServiceEndpoint "https://management.core.usgovcloudapi.net/" -ManagementPortalUrl "https://manage.windowsazure.us/" -ActiveDirectoryEndpoint "https://login.windows.net" -ActiveDirectoryServiceEndpointResourceId "https://management.core.usgovcloudapi.net/" -StorageEndpoint "core.usgovcloudapi.net"
}