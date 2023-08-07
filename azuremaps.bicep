param name string
param location string
param kind string = 'Gen1'
param skuName string = 'S0'

resource mapAcct 'Microsoft.Maps/accounts@2021-12-01-preview' = {
  name: name
  location: location
  kind: kind
  sku: {
    name: skuName
  }
}
output mapId string = mapAcct.id
