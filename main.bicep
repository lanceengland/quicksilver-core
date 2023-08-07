targetScope = 'subscription'

param resourceGroupName string = 'quicksilver-core-rg'
param location string = deployment().location

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: resourceGroupName
  location: location
}

// why name prop and name param?
module mapAcct 'azuremaps.bicep' = {
  name: 'quicksilver-maps'
  scope: rg
  params: {
    name: 'quicksilver-maps'
    location: location
  }
}

// why name prop and name param?
module keyVault 'keyvault.bicep' = {
  name: 'quicksilver-core-KeyVault2'
  scope: rg
  params: {
    location: location
    name: 'quicksilver-core-KeyVault'
  }
}

