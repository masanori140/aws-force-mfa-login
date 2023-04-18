# AWS Force MFA Login

このリポジトリは、AWS アカウントへのログイン時にマルチファクタ認証（MFA）を強制するための IAM ポリシーと IAM グループを作成するための Terragrunt コードを提供します。

## Requirements

| Name       | Version |
| ---------- | ------- |
| terraform  | 1.4.4   |
| terragrunt | 0.45.2  |

## Providers

| Name | Version |
| ---- | ------- |
| aws  | 4.62.0  |

## 前提条件

- [AWS account](https://aws.amazon.com/) が作成済みであること
- [AWS CLI](https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/cli-chap-install.html) がインストール済みであること
