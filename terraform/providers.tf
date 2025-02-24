
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}

provider "azurerm" {
  features {}

  /*subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
    client_id       = var.client_id
    client_secret   = var.client_secret
*/
# it is mandatory to add subscription id for terraform version => 4.x.x version
  subscription_id = "b2f1e96a-2500-4557-9658-7dea028c06a4"



}
