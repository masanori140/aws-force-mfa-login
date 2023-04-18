# AWS IAM Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group

variable "group_name" {
  description = "Name of the group."
  type        = string
  default     = null
}

variable "path" {
  description = "Path in which to create the group."
  type        = string
  default     = "/"
}

# AWS IAM Group Membership
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership

variable "membership_name" {
  description = "Name of the group membership."
  type        = string
}

variable "users" {
  description = "List of IAM User names to associate with the group."
  type        = list(string)
  default     = []
}

# AWS IAM Group Policy Attachment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment

variable "policies" {
  description = "List of IAM Policy ARNs to attach to the group."
  type        = list(string)
  default     = []
}
