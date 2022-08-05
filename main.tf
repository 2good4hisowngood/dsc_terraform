resource "azurerm_policy_virtual_machine_configuration_assignment" "vm_policies" {
  for_each =  local.all_data_map
  
  name               = each.value.config_name
  location           = each.value.vm_location
  virtual_machine_id = each.value.vm_id

  configuration {
      content_uri = each.value.content_uri
      content_hash = each.value.content_hash
      assignment_type = "ApplyAndAutoCorrect"
      version = "1.0.0.0"

      dynamic "parameter" {
        for_each = configuration.value.parameters
        
        name = parameter.value.name
        value = parameter.value.value
      }
  }

  depends_on = [
    var.policy_map
  ]
}
