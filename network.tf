provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-workshop"
  location = var.location
}

module "network" {
  source              = "app.terraform.io/PCSSecurity/network/azurerm"
  resource_group_name = azurerm_resource_group.example.name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]
