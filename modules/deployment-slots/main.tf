resource "azurerm_app_service_slot" "slot" {
  name                = var.app_service_slot_name
  app_service_name    = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id

  identity {
    type = "SystemAssigned"
  }

}

resource "azurerm_app_service_source_control_slot" "scm1" {
  slot_id   = azurerm_app_service_slot.slot.id
  repo_url = "https://github.com/imsparsh2001/green-demo-app.git"
  branch   = "main"
}