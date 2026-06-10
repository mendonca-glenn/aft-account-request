module "lottery_dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-lottery-dev+673588459829@gmail.com"
    AccountName               = "brightstar-lottery-dev"
    ManagedOrganizationalUnit = "Workloads NonProd"
    SSOUserEmail              = "glennmen@amazon.com"
    SSOUserFirstName          = "Glenn"
    SSOUserLastName           = "Mendonca"
  }

  account_tags = {
    Environment = "d"
    Owner       = "ilottery-platform-team"
  }

  account_customizations_name = "profile_na_standard"

  change_management_parameters = {
    change_requested_by = "Platform Engineering"
    change_reason       = "Development lottery account for US market"
  }
}
