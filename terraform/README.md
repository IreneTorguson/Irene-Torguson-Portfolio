# Terraform Workflow Examples for Application Developers

This directory contains Terraform examples that illustrate common infrastructure-as-code (IaC)
workflows application developers encounter when deploying and scaling their applications on AWS.

Each example is self-contained, uses [Terraform](https://www.terraform.io/) ≥ 1.5, and follows
current HashiCorp best-practices (modules, input variables, output values, and remote state).

---

## Examples

| # | Directory | What it demonstrates |
|---|-----------|----------------------|
| 1 | [`01-basic-web-app`](./01-basic-web-app/) | VPC, public/private subnets, EC2 auto-scaling group, Application Load Balancer, and RDS (PostgreSQL) |
| 2 | [`02-cicd-pipeline`](./02-cicd-pipeline/) | AWS CodePipeline + CodeBuild CI/CD pipeline that builds, tests, and deploys a containerised application |
| 3 | [`03-container-platform`](./03-container-platform/) | ECS Fargate cluster with service auto-scaling, CloudWatch alarms, and an ECR image repository |

---

## Prerequisites

1. [Terraform CLI ≥ 1.5](https://developer.hashicorp.com/terraform/downloads)
2. AWS credentials configured (e.g. `aws configure` or environment variables)
3. An S3 bucket and DynamoDB table for remote state (see each example's `backend.tf`)

## Quickstart

```bash
cd 01-basic-web-app      # choose an example
cp terraform.tfvars.example terraform.tfvars   # fill in your values
terraform init
terraform plan
terraform apply
```

## Conventions used across all examples

- **Workspaces** — each example supports `terraform workspace` to isolate `dev`, `staging`, and
  `prod` environments using the same code.
- **Input variables** — every tunable value is exposed as an `input variable` in `variables.tf`.
- **Outputs** — important resource identifiers (ARNs, DNS names, IDs) are exported in `outputs.tf`.
- **Tags** — all resources are tagged with `Project`, `Environment`, and `ManagedBy = "Terraform"`.
- **Least-privilege IAM** — IAM roles carry only the permissions required for the resources in each
  example.
