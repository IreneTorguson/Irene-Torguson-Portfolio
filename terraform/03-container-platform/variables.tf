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

variable "vpc_id" {
  description = "ID of the VPC to deploy into"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for ECS tasks"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the ALB"
  type        = list(string)
}

variable "container_image" {
  description = "Full image URI including tag (e.g. 123456789.dkr.ecr.us-east-1.amazonaws.com/myapp:latest)"
  type        = string
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 8080
}

variable "container_cpu" {
  description = "CPU units for the task (256 = 0.25 vCPU)"
  type        = number
  default     = 256
}

variable "container_memory" {
  description = "Memory (MiB) for the task"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Desired number of running tasks"
  type        = number
  default     = 2
}

variable "min_capacity" {
  description = "Minimum number of tasks for auto-scaling"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Maximum number of tasks for auto-scaling"
  type        = number
  default     = 10
}

variable "cpu_target_utilization" {
  description = "Target CPU utilisation percentage for auto-scaling"
  type        = number
  default     = 60
}

variable "memory_target_utilization" {
  description = "Target memory utilisation percentage for auto-scaling"
  type        = number
  default     = 70
}

variable "health_check_path" {
  description = "HTTP path used by the ALB health check"
  type        = string
  default     = "/health"
}

variable "certificate_arn" {
  description = "ACM certificate ARN for HTTPS on the ALB (leave empty to use HTTP only)"
  type        = string
  default     = ""
}

variable "log_retention_days" {
  description = "CloudWatch log retention in days"
  type        = number
  default     = 30
}
