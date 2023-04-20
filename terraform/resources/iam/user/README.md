# AWS IAM User Terraform Resource

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | >= 1.3.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name                                                                                                      | Type     |
| --------------------------------------------------------------------------------------------------------- | -------- |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |

## Inputs

| Name                                                                     | Description                                                                                                            | Type           | Default | Required |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------- | -------------- | ------- | :------: |
| <a name="input_force_destroy"></a> [force_destroy](#input_force_destroy) | When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. | `bool`         | `false` |    no    |
| <a name="input_path"></a> [path](#input_path)                            | Path in which to create the user.                                                                                      | `string`       | `"/"`   |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                            | A mapping of tags to assign to the resource.                                                                           | `map(string)`  | `{}`    |    no    |
| <a name="input_users"></a> [users](#input_users)                         | List of IAM users to create.                                                                                           | `list(string)` | `[]`    |    no    |

## Outputs

| Name                                                        | Description |
| ----------------------------------------------------------- | ----------- |
| <a name="output_iam_user"></a> [iam_user](#output_iam_user) | n/a         |
