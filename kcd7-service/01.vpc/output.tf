output "vpc_id" {
  description = "ID or project VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "ID or private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "ID or public subnets"
  value       = module.vpc.public_subnets
}