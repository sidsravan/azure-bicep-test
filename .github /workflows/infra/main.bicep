targetScope = 'subscription'

@description('Resource group name')
param rgName string = "sample-rg"

@description('Resource group location (e.g., centralindia, eastus, westeurope)')
param rgLocation string = "eastus"

@description('Optional tags for the resource group')
param tags object = {}

resource rg 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: rgName
  location: rgLocation
  tags: tags
}

output resourceGroupId string = rg.id
