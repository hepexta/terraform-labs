resource "azurerm_public_ip" "myipaddress" {
  name                = var.ipaddressname
  allocation_method   = "Static"
  location            = azurerm_resource_group.myTerraformGroup.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name
  tags = var.tags
}