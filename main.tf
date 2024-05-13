resource "azurerm_kubernetes_cluster" "example" {
  name                = "aks-fastfoodapi"
  location            = "eastus"
  resource_group_name = "rg-fiap-tech-challenge-3"
  dns_prefix          = "fastfoodapi"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    app = "FastFoodAPI"
  }
}