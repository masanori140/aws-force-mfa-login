module "iam_plolicy" {
  source      = "../../resources/iam/policy"
  description = "Policy to enforce MFA for IAM users"
  name        = "ForceMFA"
  path        = "${path.module}/files/template/force_mfa_policy.json.tpl"
  tags        = var.tags
}

module "iam_user" {
  source = "../../resources/iam/user"
  users  = ["mfa_user"]
  tags   = var.tags
}

module "iam_group" {
  source          = "../../resources/iam/group"
  group_name      = "force_mfa"
  membership_name = "force_mfa_membership"
  /* AWS CLIでもMFAが強制される事を確認する為にAmazonS3ReadOnlyAccessをアタッチする */
  policies = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
    module.iam_plolicy.iam_policy.arn
  ]
  users = module.iam_user.iam_user.*.name
}
