# AWS IAM User
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

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
