param location string

resource mapAcct 'Microsoft.Maps/accounts@2021-12-01-preview' = {
  name: 'myMapAcct'
  location: location
  kind: 'Gen1'
  sku: {
    name: 'S0'
  }
}
