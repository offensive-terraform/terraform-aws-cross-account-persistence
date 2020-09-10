variable "attacker_account_id" {
  type        = string
  description = "(Required) The arn of IAM user or IAM role"
}

variable "role_name" {
  type        = string
  description = "(Required) The name of the role."
}

variable "policy_arn" {
  type        = string
  description = "(Required) The ARN of the policy you want to apply."
}
