module "test_workload_account_2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "glennmen+test-workload-2@amazon.com"
    AccountName               = "brightstar-test-workload-2"
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
    change_reason       = "Test account 2 to validate AFT pipeline"
  }
}
