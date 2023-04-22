# AWS Force MFA Login iam Terraform module

## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.4.4  |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | ~> 4.62.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | ~> 4.62.0 |

## Modules

| Name                                                                 | Source                     | Version |
| -------------------------------------------------------------------- | -------------------------- | ------- |
| <a name="module_iam_group"></a> [iam_group](#module_iam_group)       | ../../resources/iam/group  | n/a     |
| <a name="module_iam_plolicy"></a> [iam_plolicy](#module_iam_plolicy) | ../../resources/iam/policy | n/a     |
| <a name="module_iam_user"></a> [iam_user](#module_iam_user)          | ../../resources/iam/user   | n/a     |

## Resources

No resources.

## Inputs

| Name                                          | Description                                 | Type          | Default | Required |
| --------------------------------------------- | ------------------------------------------- | ------------- | ------- | :------: |
| <a name="input_tags"></a> [tags](#input_tags) | A mapping of tags to assign to the resource | `map(string)` | n/a     |   yes    |

## Outputs

No outputs.
