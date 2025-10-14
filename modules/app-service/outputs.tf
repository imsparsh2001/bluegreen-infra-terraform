output "app_service_name" {
  description = "Name of the App Service"
  value       = azurerm_app_service.as.name
}

output "app_service_plan_id" {
  description = "ID of the App Service Plan"
  value       = azurerm_app_service_plan.asp.id
}
