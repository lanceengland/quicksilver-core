# Quicksilver

## Overview

This project is a client/service application called Quicksilver, a courier company. The application is for scheduling, cancelling, and tracking items for delivery.

The main areas will be:

- An API for using the service
- A sample client application that uses the API
- Infrastructure as code (IaC), repos, and continuous integration/continuous delivery (CI/CD)

The initial tech will be:

- Azure cloud
- ASP.NET Core running on a Linux container
- Data storage will be Azure SQL Database
- Azure Maps
- Azure Bicep for IaC
- Azure DevOps repos & pipelines for CI/CD
- Azure Key Vault for secrets management

## Deployment

[Install the Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

Bicep commands are part of the Azure CLI. To validate, run: az bicep version

[Install Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install). Windows Terminal offers a modern experience to the command-line.

Download the code repository.

Open Windows Terminal

Navigate to root of the local git repo.

Run: az login

Run: az deployment sub create --template-file .\infra-as-code\main.bicep --location 'eastus'

Tip: Use the --what-if parameter to validate the deployment without creatiung anything
