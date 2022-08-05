# Azure Automanage Machine Configuration - Terraform Deployment

This is an example Terraform configuration intended for use with the [Azure Automanage Machine Configuration Repo](https://github.com/2good4hisowngood/dsc-internal).

## What will this do?

This is a Terraform configuration that will create Azure Automanage Machine Configurations for the VMs you input.

When you set up a Workspace on Terraform Cloud, you can link to this repository. Terraform Cloud can then run `terraform plan` and `terraform apply` automatically when changes are pushed. For more information on how Terraform Cloud interacts with Version Control Systems, see [our VCS documentation](https://www.terraform.io/docs/cloud/run/ui.html).

## What are the prerequisites?

You must have an Azure account and provide your Azure Tenant/Subscription/Client Auth Creds to Terraform Cloud. Terraform Cloud encrypts and stores variables using [Vault](https://www.vaultproject.io/). For more information on how to store variables in Terraform Cloud, see [our variable documentation](https://www.terraform.io/docs/cloud/workspaces/variables.html).

The values for `ARM_TENANT_ID` `ARM_SUBSCRIPTION_ID` `ARM_CLIENT_ID` and `ARM_CLIENT_SECRET` should be saved as environment variables on your workspace.
