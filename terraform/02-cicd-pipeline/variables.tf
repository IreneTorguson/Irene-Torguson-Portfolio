variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Short name used in resource names and tags"
  type        = string
  default     = "myapp"
}

variable "github_owner" {
  description = "GitHub organisation or user that owns the source repository"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name (without the owner prefix)"
  type        = string
}

variable "github_branch" {
  description = "Branch to trigger the pipeline on"
  type        = string
  default     = "main"
}

variable "build_compute_type" {
  description = "CodeBuild compute type"
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
}

variable "build_image" {
  description = "CodeBuild managed image"
  type        = string
  default     = "aws/codebuild/standard:7.0"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster to deploy to"
  type        = string
}

variable "ecs_service_name" {
  description = "Name of the ECS service to update"
  type        = string
}
