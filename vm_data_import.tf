data "azurerm_resources" "tagged_vms" {
  type = "Microsoft.Compute/virtualMachines"

  required_tags = {
    var.tag = "true"
  }
}