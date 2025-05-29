resource "azurerm_storage_account" "example" {
  name                     = "stgname123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }

}

resource "azurerm_storage_container" "container" {
  name                  = "tfstate" # Change to your desired container name
  storage_account_id  = azurerm_storage_account.example.id
  container_access_type = "private"
}