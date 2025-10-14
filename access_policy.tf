# lookup the built-in role definition "Key Vault Secrets User"
data "azurerm_role_definition" "kv_secrets_user" {
  name  = "Key Vault Secrets User"
  scope = azurerm_key_vault.kv.id
}

# Role assignment for the app service system-assigned identity
resource "azurerm_role_assignment" "app_kv_secrets_user" {
  scope                = azurerm_key_vault.kv.id
  role_definition_id   = data.azurerm_role_definition.kv_secrets_user.id
  principal_id         = azurerm_app_service.as.identity.0.principal_id

  # ensure the app service identity exists before role assignment
  depends_on = [azurerm_app_service.as]
}

# Role assignment for the slot system-assigned identity
resource "azurerm_role_assignment" "slot_kv_secrets_user" {
  scope                = azurerm_key_vault.kv.id
  role_definition_id   = data.azurerm_role_definition.kv_secrets_user.id
  principal_id         = azurerm_app_service_slot.slot.identity.0.principal_id

  depends_on = [azurerm_app_service_slot.slot]
}
