# Example 2 — CI/CD Pipeline

Provisions a fully managed CI/CD pipeline on AWS for a containerised application:

```
GitHub (webhook) → CodePipeline
                      ├── Source stage  (CodeStar connection to GitHub)
                      ├── Build stage   (CodeBuild — runs unit tests, builds Docker image, pushes to ECR)
                      └── Deploy stage  (CodeBuild — updates ECS service with new image tag)
```

### Resources created

- ECR repository for Docker images
- CodeBuild project with a managed build environment
- S3 bucket for pipeline artefacts (server-side encrypted)
- CodePipeline with Source → Build → Deploy stages
- IAM roles for CodePipeline and CodeBuild (least-privilege)
- CodeStar Connection to GitHub (must be manually confirmed in the AWS Console on first use)

### Usage

```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your values

terraform init
terraform workspace select dev   # or new dev
terraform plan -out=tfplan
terraform apply tfplan
```

> **First-time GitHub connection:** After `terraform apply`, open the AWS Console →
> Developer Tools → Settings → Connections and click **Update pending connection** to
> authorise the GitHub OAuth app.
