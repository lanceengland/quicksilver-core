# Quicksilver

## Overview

This project is a client/service application called Quicksilver, a courier company. The application is for scheduling, cancelling, and tracking items for delivery.

The main areas are seperate repositories:

1. [quicksilver-backend](https://github.com/lanceengland/quicksilver-backend): An API and database for using the service
2. quuicksilver-frontend: A sample client application that uses the API
3. [quicksilver-core](https://github.com/lanceengland/quicksilver-core): Infrastructure as code (IaC) as Azure Bicep files for core resources to be created and then referenced, but not part of continuous delivery (CD).

The initial tech will be:

- Azure cloud
- ASP.NET Core running on a Linux container
- Data storage in Azure SQL Database
- Azure Maps
- Azure Bicep for IaC
- Azure DevOps repos & pipelines for CI/CD
- Azure Key Vault for secrets management

## Deployment

### Prerequisites

An Azure subscription.

[Install Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install). Windows Terminal offers a modern experience to the command-line.

[Install the Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).

Bicep commands are part of the Azure CLI. To validate, run: az bicep version

### Quicksilver-core

Open Windows Terminal.

Clone the [quicksilver-core](https://github.com/lanceengland/quicksilver-core) repository.

Run: az login

Run: az deployment sub create --template-file main.bicep --location 'eastus'

Tip: Use the --what-if parameter to validate the deployment without creating anything

This will deploy the following:

- A resource group
- An Azure Maps account
