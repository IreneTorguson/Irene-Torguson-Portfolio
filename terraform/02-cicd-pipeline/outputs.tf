output "ecr_repository_url" {
  description = "URI of the ECR repository"
  value       = aws_ecr_repository.app.repository_url
}

output "pipeline_name" {
  description = "Name of the CodePipeline pipeline"
  value       = aws_codepipeline.main.name
}

output "artifact_bucket" {
  description = "S3 bucket used for pipeline artefacts"
  value       = aws_s3_bucket.artifacts.bucket
}

output "codestar_connection_arn" {
  description = "CodeStar connection ARN — must be manually activated in the AWS Console"
  value       = aws_codestarconnections_connection.github.arn
}
