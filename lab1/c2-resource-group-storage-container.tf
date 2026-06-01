# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "prodrg" {
  name = "myrg-1"
  location = "East US"
}

# Resource-2: Random String 
resource "random_string" "prodrandom" {
  length = 16
  upper = false 
  special = false
}

# Resource-3: Azure Storage Account 
resource "azurerm_storage_account" "prodsa" {
  name                     = "mysa${random_string.prodrandom.id}"
  resource_group_name      = azurerm_resource_group.prodrg.name
  location                 = azurerm_resource_group.prodrg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "prod"
  }
}