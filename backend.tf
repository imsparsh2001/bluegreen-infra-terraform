terraform {
  backend "azurerm" {
    resource_group_name  = "rg_tfstate"  
    storage_account_name = "terraformbackend21876"                      
    container_name       = "tfstate"                      
    key                  = "dev.terraform.tfstate"        
  }
}
