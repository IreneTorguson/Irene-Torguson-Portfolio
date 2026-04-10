output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app.dns_name
}

output "alb_zone_id" {
  description = "Hosted zone ID of the ALB (useful for Route 53 alias records)"
  value       = aws_lb.app.zone_id
}

output "rds_endpoint" {
  description = "RDS instance connection endpoint"
  value       = aws_db_instance.main.endpoint
  sensitive   = true
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "private_subnet_ids" {
  description = "IDs of the private (app) subnets"
  value       = aws_subnet.private[*].id
}
