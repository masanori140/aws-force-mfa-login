# AWS IAM User
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices."
  type        = bool
  default     = false
}

variable "path" {
  description = "Path in which to create the user."
  type        = string
  default     = "/"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "users" {
  description = "List of IAM users to create."
  type        = list(string)
  default     = []
}
