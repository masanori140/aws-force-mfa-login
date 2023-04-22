# AWS Force MFA Login

This is Terragrunt code for setting up an environment to validate an IAM policy that enforces multi-factor authentication (MFA) when logging in to the AWS Management Console.

## Prerequisites

このリポジトリのコードを使用するには、以下のソフトウェアがインストールされている必要があります。

- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)

## Requirements

| Name       | Version   |
| ---------- | --------- |
| terraform  | ~> 1.4.4  |
| terragrunt | ~> 0.45.2 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | ~> 4.62.0 |

## 事前準備

1. AWS CLI を使用して、AWS アカウントにログインします。

```bash
aws configure
```

2. このリポジトリをクローンします。

```bash
git clone https://github.com/maishio/aws-force-mfa-login.git
cd aws-force-mfa-login/terraform/enviroments/prod
```

3. [env.hcl](terraform/environments/prod/env.hcl)ファイルを環境に合わせて編集します。

```hcl
locals {
  aws_account_id = "123456789012"
  aws_region_id  = "us-east-1"
  env            = "myEnv"
  service        = "myService"
}
```

## デプロイ方法

1. Terraform コードを初期化します。

```bash
terragrunt run-all init --terragrunt-non-interactive
```

2. Terraform コードをデプロイします。

```bash
terragrunt run-all plan
terragrunt run-all apply
```
