variable "location" {}

variable "admin_username" {
  type        = string
  description = "Administrator user name for virtual machine"
}

variable "admin_password" {
  type        = string
  description = "Password must meet Azure complexity requirements"
}

variable "prefix" {
  type    = string
  default = "StutiSr"
}

variable "tags" {
  type = map

  default = {
    Environment = "Terraform Getting Started Test"
        Team = "Development"
  }
}

variable "sku" {
  default = {
    westus2 = "16.04-LTS"
  }
}