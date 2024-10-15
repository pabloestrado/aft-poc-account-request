module "sandbox3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsacct+spare28+sandbox-aft-test-request-2@automat-it.com"
    AccountName               = "sandbox-aft-test-request-2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "awsacct+spare28+sandbox-aft-test-request-2@automat-it.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group        = "non-prod"
    env          = "dev"
    project_name = "aft-poc"
    vpc_cidr     = "10.128.0.0/16"
  }

  account_customizations_name = "sandbox"
}



module "sandbox4" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsacct+spare28+sandbox-aft-test-request-4@automat-it.com"
    AccountName               = "sandbox-aft-test-request-4"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "awsacct+spare28+sandbox-aft-test-request-4@automat-it.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group        = "non-prod"
    env          = "dev"
    project_name = "aft-poc"
    vpc_cidr     = "10.130.0.0/16"
  }

  account_customizations_name = "eks-public"
}


module "mgmt-public-module" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsacct+spare28+mgmt-public-module@automat-it.com"
    AccountName               = "mgmt-public-module"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "awsacct+spare28+sandbox-mgmt-public-module@automat-it.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group        = "non-prod"
    env          = "mgmt"
    project_name = "aft-poc"
    vpc_cidr     = "10.131.0.0/16"
  }

  account_customizations_name = "mgmt-public"
}


module "mgmt" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsacct+spare28+mgmt@automat-it.com"
    AccountName               = "mgmt"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "awsacct+spare28+mgmt@automat-it.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group        = "non-prod"
    env          = "mgmt"
    project_name = "aft-poc"
    vpc_cidr     = "10.132.0.0/16"
  }

  account_customizations_name = "mgmt"
}
