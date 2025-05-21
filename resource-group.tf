resource "azurerm_resource_group" "samplerg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}