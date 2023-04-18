# AWS IAM Group Terraform Resource

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.3.0 |

## Providers

| Name | Version   |
|------|-----------|
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_group_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | Name of the group. | `string` | `null` | no |
| <a name="input_membership_name"></a> [membership\_name](#input\_membership\_name) | Name of the group membership. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the group. | `string` | `"/"` | no |
| <a name="input_policies"></a> [policies](#input\_policies) | List of IAM Policy ARNs to attach to the group. | `list(string)` | `[]` | no |
| <a name="input_users"></a> [users](#input\_users) | List of IAM User names to associate with the group. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_group"></a> [iam\_group](#output\_iam\_group) | n/a |
| <a name="output_iam_group_membership"></a> [iam\_group\_membership](#output\_iam\_group\_membership) | n/a |
| <a name="output_iam_group_policy_attachment"></a> [iam\_group\_policy\_attachment](#output\_iam\_group\_policy\_attachment) | n/a |
