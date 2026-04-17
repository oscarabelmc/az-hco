resource "azurerm_resource_group" "rg" {
  name     = "rg-hipnosis-devops"
  location = "East US"
}

resource "azurerm_storage_account" "static" {
  name                     = "hipnosisweb12345"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document     = "index.html"
    error_404_document = "index.html"
  }
}