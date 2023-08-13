resource "azurerm_virtual_network" "myipaddress" {
  name                = var.ipaddressname
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.myTerraformGroup.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name
}