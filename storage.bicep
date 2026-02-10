resource mysa 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  name: saname
  location: saLocation
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

@allowed([
  'WestEurope'
  'NorthEurope'
]
)
param saLocation string = 'WestEurope'

var saname = 'sa${uniqueString(resourceGroup().id)}'
