# AFT Account Request Repository

This repository contains account request files for AWS Control Tower Account Factory for Terraform (AFT).

## Usage

To provision a new account, create a `.tf` file in this directory following the template below.

## Account Request Template

```hcl
module "account_request_<customer>_<product>_<env>" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-<customer>-<product>-<env>@brightstar.com"
    AccountName               = "aws-lottery-<env>-<customer>-<product>"
    ManagedOrganizationalUnit = "Workloads-Prod"  # or Workloads-NonProd, Sandbox
    SSOUserEmail              = "platform-team@brightstar.com"
    SSOUserFirstName          = "Platform"
    SSOUserLastName           = "Team"
  }

  account_tags = {
    Environment       = "<env>"
    "Cost Center"     = "<cost-center>"
    Owner             = "<owner-team>"
    "business-unit"   = "<business-unit>"
    "product-id"      = "<product-id>"
    "site-code"       = "<site-code>"
    "notification-team" = "<notification-team>"
  }

  account_customizations_name = "profile_na_standard"  # Compliance profile

  change_management_parameters = {
    change_requested_by = "Platform Engineering"
    change_reason       = "New account provisioning"
  }
}
```

## Compliance Profiles

| Profile | Regions | Use Case |
|---------|---------|----------|
| `profile_na_standard` | us-east-2, us-west-2, ca-central-1 | Standard North America |
| `profile_eu_standard` | eu-west-1, eu-central-1 | EU with GDPR controls |
| `profile_canada_only` | ca-central-1 | Canadian data sovereignty |
| `profile_us_east_only` | us-east-2 | US East restriction |
| `profile_sa_standard` | sa-east-1 | Brazil with LGPD controls |
