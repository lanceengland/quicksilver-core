targetScope = 'subscription'

param resourceGroupName string = 'quicksilver-rg'
param location string = deployment().location

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: resourceGroupName
  location: location
}

module mapAcct 'azuremaps.bicep' = {
  scope: rg
  name: 'mymapacct'
  params: {
    name: 'quicksilver-maps'
    location: location
  }
}
