resource "azurerm_resource_group" "aksresource" {
  name     = "andreianddavetf"
  location = "Uk South"
}


module "aks" {
  source = "./aks-module"
  resource_group_name                  = azurerm_resource_group.aksresource.name

  log_analytics_workspace_enabled      = var.log_analytics_workspace_enabled
  role_based_access_control_enabled    = false
  rbac_aad                             = false
  cluster_name                         = "andreianddavetfmod"
  prefix                               = 1234 
}

