module "test_workload_account_3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "glennmen+test-workload-3@amazon.com"
    AccountName               = "brightstar-test-workload-3"
    ManagedOrganizationalUnit = "Workloads NonProd"
    SSOUserEmail              = "glennmen@amazon.com"
    SSOUserFirstName          = "Glenn"
    SSOUserLastName           = "Mendonca"
  }

  account_tags = {
    Environment = "d"
    Owner       = "platform-engineering"
  }

  change_management_parameters = {
    change_requested_by = "Platform Engineering"
    change_reason       = "Test account 3 - clean AFT pipeline validation"
  }
}
