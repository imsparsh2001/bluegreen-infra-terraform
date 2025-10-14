variable "key_vault_name" {
    type = string
    description = "name of the key vault"
    # default = "kv-bluegreen"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the existing Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
}