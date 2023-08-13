resource "azurerm_network_interface" "mynetworkinterface" {
  name                = var.networkinterfacename
  location            = azurerm_resource_group.myTerraformGroup.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.myterraformsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.myipaddress.id
  }

  tags = var.tags
}

resource "azurerm_network_interface_security_group_association" "mynisgassociation" {
  network_interface_id      = azurerm_network_interface.mynetworkinterface.id
  network_security_group_id = azurerm_network_security_group.mysecuritygroup.id
}