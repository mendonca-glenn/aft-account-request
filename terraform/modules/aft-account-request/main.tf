resource "aws_dynamodb_table_item" "account_request" {
  table_name = "aft-request"
  hash_key   = "id"

  item = jsonencode({
    id = { S = lookup(var.control_tower_parameters, "AccountEmail") }
    control_tower_parameters = { M = {
      AccountEmail              = { S = lookup(var.control_tower_parameters, "AccountEmail") }
      AccountName               = { S = lookup(var.control_tower_parameters, "AccountName") }
      ManagedOrganizationalUnit = { S = lookup(var.control_tower_parameters, "ManagedOrganizationalUnit") }
      SSOUserEmail              = { S = lookup(var.control_tower_parameters, "SSOUserEmail") }
      SSOUserFirstName          = { S = lookup(var.control_tower_parameters, "SSOUserFirstName") }
      SSOUserLastName           = { S = lookup(var.control_tower_parameters, "SSOUserLastName") }
      }
    }
    change_management_parameters = { M = {
      change_reason       = { S = lookup(var.change_management_parameters, "change_reason", "") }
      change_requested_by = { S = lookup(var.change_management_parameters, "change_requested_by", "") }
      }
    }
    account_tags                = { S = jsonencode(var.account_tags) }
    account_customizations_name = { S = var.account_customizations_name }
    custom_fields               = { S = jsonencode(var.custom_fields) }
  })
}
