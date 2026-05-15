# =============================================================================
# Sample Account Request: Production Lottery Account
# =============================================================================
# This file demonstrates the account request format for AFT.
# Platform engineers create one .tf file per account request.
# Spacelift validates the request, then commits to trigger AFT.
# =============================================================================

module "account_request_lottery_prod_us" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-lottery-prod-us@brightstar.com"
    AccountName               = "aws-lottery-p-us-ilottery"
    ManagedOrganizationalUnit = "Workloads-Prod"
    SSOUserEmail              = "platform-team@brightstar.com"
    SSOUserFirstName          = "Platform"
    SSOUserLastName           = "Team"
  }

  account_tags = {
    Environment         = "p"
    "Cost Center"       = "CC-LOTTERY-US-001"
    Owner               = "ilottery-platform-team"
    "business-unit"     = "ilottery"
    "product-id"        = "lottery-engine"
    "site-code"         = "us-east-2"
    "notification-team" = "ilottery-ops"
    "data-residency"    = "NA"
    "workload-tier"     = "1"
  }

  account_customizations_name = "profile_na_standard"

  change_management_parameters = {
    change_requested_by = "Platform Engineering"
    change_reason       = "New production lottery account for US market"
  }
}
