# AWS IAM User
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "this" {
  count         = length(var.users)
  force_destroy = var.force_destroy
  name          = var.users[count.index]
  path          = var.path
  tags          = merge(var.tags, { "Name" = var.users[count.index] })
}
