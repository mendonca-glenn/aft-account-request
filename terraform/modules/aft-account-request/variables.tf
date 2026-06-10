variable "control_tower_parameters" {
  type = map(string)
}

variable "account_tags" {
  type    = map(string)
  default = {}
}

variable "account_customizations_name" {
  type    = string
  default = ""
}

variable "change_management_parameters" {
  type    = map(string)
  default = {}
}

variable "custom_fields" {
  type    = map(string)
  default = {}
}
