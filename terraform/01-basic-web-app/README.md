# Example 1 — Basic Web Application

Provisions a three-tier web application on AWS:

```
Internet → ALB (public subnets) → EC2 ASG (private subnets) → RDS PostgreSQL (isolated subnets)
```

### Resources created

- VPC with public, private, and isolated (DB) subnet tiers across 2 AZs
- Internet Gateway & NAT Gateway
- Application Load Balancer with HTTP → HTTPS redirect
- EC2 Auto Scaling Group (launch template) running Amazon Linux 2023
- RDS PostgreSQL (Multi-AZ in `prod` workspace)
- Security groups with minimal required ingress rules
- IAM instance profile with SSM access (no SSH keys needed)

### Usage

```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your values

terraform init
terraform workspace new dev   # or select an existing workspace
terraform plan -out=tfplan
terraform apply tfplan
```
