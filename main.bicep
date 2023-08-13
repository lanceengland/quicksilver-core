param location string = resourceGroup().location

@description('The administrator username of the SQL logical server.')
param administratorLogin string

@description('The administrator password of the SQL logical server.')
@secure()
param administratorLoginPassword string

// why name prop and name param?
module mapAcct 'azuremaps.bicep' = {
  name: 'quicksilver-maps'
  params: {
    name: 'quicksilver-maps'
    location: location
  }
}

// module keyVault 'keyvault.bicep' = {
//   name: 'quicksilver-core-KeyVault-module'
//   params: {
//     location: location
//     name: 'quicksilver-core-kv'
//   }
// }

module sqlServer 'sqlserver.bicep' = {
  name: 'le-sqlsrv02-module'
  params: {
    location: location
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
  }
}
