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
