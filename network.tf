resource "azurerm_resource_group" "myresourcegroup" {
  name     = "${var.prefix}-workshop"
  location = var.location
}

module "network" {
  source  = "app.terraform.io/PCSSecurity/network/azurerm"
  version = "3.5.0"
  # insert required variables here
}