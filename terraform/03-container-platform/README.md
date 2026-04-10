# Example 3 — Container Platform (ECS Fargate)

Provisions a production-ready ECS Fargate cluster for running containerised microservices:

```
Internet → ALB → ECS Fargate Service (private subnets)
                     └── CloudWatch auto-scaling (CPU & memory target tracking)
```

### Resources created

- ECS cluster with Container Insights enabled
- ECS task definition (Fargate launch type) pulling from ECR
- ECS service with deployment circuit breaker and rollback enabled
- Application Load Balancer with a target group
- Auto-scaling policy (target tracking on CPU utilisation)
- CloudWatch log group for container stdout/stderr
- IAM task execution role and task role (least-privilege)

### Prerequisites

- A VPC with private subnets and a NAT gateway (see Example 1, or bring your own)
- An existing ECR image (see Example 2, or use any public image to get started)

### Usage

```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your values

terraform init
terraform workspace select dev   # or new dev
terraform plan -out=tfplan
terraform apply tfplan
```
