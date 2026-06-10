module "lottery_prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-lottery-prod+673588459829@gmail.com"
    AccountName               = "brightstar-lottery-prod"
    ManagedOrganizationalUnit = "Workloads Prod"
    SSOUserEmail              = "glennmen@amazon.com"
    SSOUserFirstName          = "Glenn"
    SSOUserLastName           = "Mendonca"
  }

  account_tags = {
    Environment = "p"
    Owner       = "ilottery-platform-team"
  }

  account_customizations_name = "profile_na_standard"

  change_management_parameters = {
    change_requested_by = "Platform Engineering"
    change_reason       = "Production lottery account for US market"
  }
}
