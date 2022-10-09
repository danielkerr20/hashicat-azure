module "network" {
  source  = "app.terraform.io/hashicat-azure677/network/azurerm"
  version = "3.5.0"
  # insert required variables here
}


resource "azurerm_resource_group" "myresourcegroup" {
  name     = "${var.prefix}-workshop"
  location = var.location

  tags = {
    environment = "Production"
  }
}