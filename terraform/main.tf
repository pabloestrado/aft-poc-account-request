module "eks-public-module" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awsacct+spare28+eks-public-module@automat-it.com"
    AccountName               = "eks-public-module"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "awsacct+spare28+eks-public-module@automat-it.com"
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
    env          = "mgmt"
    project_name = "aft-poc"
    vpc_cidr     = "10.132.0.0/16"
  }

  account_customizations_name = "mgmt"
}


