variable "app_service_slot_name" {
    type = string
    description = "name of the app service slot"
    # default = "slot-bluegreen"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the existing Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
}

variable "app_service_name" {
  type        = string
  description = "Name of the App Service to attach the slot to"
}

variable "app_service_plan_id" {
  type        = string
  description = "ID of the App Service Plan"
}