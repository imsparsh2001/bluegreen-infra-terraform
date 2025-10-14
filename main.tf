
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}
module "app-service" {
  source              = "./modules/app-service"
  asp_name            = "asp-bluegreen"
  app_service_name    = "app-bluegreen"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location

}

module "deployment-slots" {
  source                = "./modules/deployment-slots"
  app_service_slot_name = "slot-bluegreen"
  resource_group_name   = data.azurerm_resource_group.rg.name
  location              = data.azurerm_resource_group.rg.location
  app_service_name      = module.app-service.app_service_name
  app_service_plan_id   = module.app-service.app_service_plan_id
}

module "key-vault" {
  source              = "./modules/key-vault"
  key_vault_name      = "kv-bluegreen"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location

}



resource "azurerm_web_app_active_slot" "active" {
  slot_id = module.deployment-slots.slot_id
}
