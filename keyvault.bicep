param name string
param location string
param skuFamily string = 'A'
param skuName string = 'standard'
param tenantId string = subscription().tenantId

resource kv 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: name
  location: location
  properties: {
    sku: {
      family: skuFamily
      name: skuName
    }
    tenantId: tenantId
  }
}

resource keyVaultSecret 'Microsoft.KeyVault/vaults/secrets@2019-09-01' = {
  parent: kv
  name: 'mySecret'
  properties: {
    value: 'test secret'
  }
}

output keyVaultId string = kv.id
