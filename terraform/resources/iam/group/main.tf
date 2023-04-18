# AWS IAM Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group

resource "aws_iam_group" "this" {
  name = var.group_name
  path = var.path
}

# AWS IAM Group Membership
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership

resource "aws_iam_group_membership" "this" {
  name  = var.membership_name
  users = var.users
  group = aws_iam_group.this.name
}

# AWS IAM Group Policy Attachment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment

resource "aws_iam_group_policy_attachment" "this" {
  count      = length(var.policies)
  group      = aws_iam_group.this.name
  policy_arn = var.policies[count.index]
}
