# AWS IAM User
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

output "iam_user" {
  value = aws_iam_user.this
}
