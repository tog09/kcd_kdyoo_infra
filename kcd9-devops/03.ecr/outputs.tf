output "ecr_arn" {
  value = aws_ecr_repository.app.arn
}

output "ecr_repo_url" {
  value = aws_ecr_repository.app.repository_url
}