resource "random_id" "randomId" {
    keepers = {
        resource_group = azurerm_resource_group.myTerraformGroup.name
    }
    byte_length = 8
}

resource "azurerm_storage_account" "mystorageaccount" {
  name                     = "storage_acc${random_id.randomId.hex}"
  resource_group_name      = azurerm_resource_group.myTerraformGroup.name
  location                 = azurerm_resource_group.myTerraformGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}