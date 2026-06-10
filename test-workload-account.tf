module "test_workload_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-test-workload+673588459829@gmail.com"
    AccountName               = "brightstar-test-workload"
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
    change_reason       = "Test account to validate AFT pipeline"
  }
}
