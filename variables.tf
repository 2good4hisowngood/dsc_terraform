variable "dsc_json_values_file" {
    description = "url to download json file"
    type = string 
}

data "http" "policies" {
  url = var.dsc_json_values_file
}

variable "tag" {
  default = "ManagedByTerraform"
  description = "value of tag to filter VMs"
}

variable "token" {
  description = "Terraform Cloud API Token"
}