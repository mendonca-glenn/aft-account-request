module "payments_prod_eu" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-payments-prod-eu+673588459829@gmail.com"
    AccountName               = "brightstar-payments-prod-eu"
    ManagedOrganizationalUnit = "Workloads Prod"
    SSOUserEmail              = "glennmen@amazon.com"
    SSOUserFirstName          = "Glenn"
    SSOUserLastName           = "Mendonca"
  }

  account_tags = {
    Environment = "p"
    Owner       = "payments-team"
  }

  account_customizations_name = "profile_eu_standard"

  change_management_parameters = {
    change_requested_by = "Platform Engineering"
    change_reason       = "Production payments account for EU market (GDPR)"
  }
}
