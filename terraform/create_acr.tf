resource "azurerm_container_registry" "microhack-acr" {
  name                = "${var.prefix}-acr"
  location            = azurerm_resource_group.microhack_rg.location
  resource_group_name = azurerm_resource_group.microhack_rg.name
  sku                      = "Basic"
  admin_enabled            = true
}

output "acr_admin_password" {
  value       = azurerm_container_registry.microhack-acr.admin_password
}