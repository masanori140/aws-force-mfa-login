# AWS IAM Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group

output "iam_group" {
  value = aws_iam_group.this
}

# AWS IAM Group Membership
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership

output "iam_group_membership" {
  value = aws_iam_group_membership.this
}

# AWS IAM Group Policy Attachment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment

output "iam_group_policy_attachment" {
  value = aws_iam_group_policy_attachment.this
}
