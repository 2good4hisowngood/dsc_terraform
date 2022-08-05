variable "vm_list" {
  description = "List output of concatonated VMs from separate Terraform apply."
}

variable "dsc_json_values_file" {
    description = "url to download json file"
    type = string 
}

data "http" "policies" {
  url = var.dsc_json_values_file
}

variable "token" {
  description = "Terraform Cloud API Token"
}