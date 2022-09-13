terraform {
module "network" {
  source  = "app.terraform.io/PCSSecurity/network/azurerm"
  version = "3.5.0"
  # insert required variables here
resource "azurerm_resource_group" "myresourcegroup" {
  name     = "${var.prefix}-workshop"
  location = var.location
}
resource_group_name = azurerm_resource_group.myresourcegroup.name
}