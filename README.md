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

Install the Azure CLI

Install the Bicep module

Install Windows Terminal

Open Windows Terminal

Navigate to root of the git repo

az login

az deployment sub create --template-file .\infra-as-code\main.bicep --location 'eastus'

Tip: Use the --what-if parameter to validate the deployment without creatiung anything
