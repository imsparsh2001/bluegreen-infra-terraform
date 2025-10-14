
variable "asp_name" {
    type = string
    description = "name of the app service plan"
    # default = "asp-bluegreen"
}

variable "app_service_name" {
    type = string
    description = "name of the app service"
    # default = "app-bluegreen"

}

variable "resource_group_name" {
  type        = string
  description = "Name of the existing Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
}

