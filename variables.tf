variable "resource_group_name" {
  type = string
  description = "name of the resource group "
  default = "Sparsh_Jaipuriyar"
}

variable "location" {
  type = string
  description = "resouce group location"
  default = "eastus"
}


variable "asp_name" {
    type = string
    description = "name of the app service plan"
    default = "asp-bluegreen"
}

variable "app_service_name" {
    type = string
    description = "name of the app service"
    default = "app-bluegreen"

}

variable "app_service_slot_name" {
    type = string
    description = "name of the app service slot"
    default = "slot-bluegreen"
}


variable "key_vault_name" {
    type = string
    description = "name of the key vault"
    default = "kv-bluegreen"
}


variable "key_vault_secret_name" {
  description = "The name of the secret to store in Azure Key Vault"
  type        = string
  default     = "DbPassword"
}

variable "key_vault_secret_value" {
  description = "The value of the secret to store in Azure Key Vault"
  type        = string
  sensitive   = true
  default     = "My$ecureP@ssw0rd"
}