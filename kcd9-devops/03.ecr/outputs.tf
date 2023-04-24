output "ecr_hello_arn" {
  value = aws_ecr_repository.hello.arn
}

output "ecr_hello_repo_url" {
  value = aws_ecr_repository.hello.repository_url
}

output "ecr_hi_arn" {
  value = aws_ecr_repository.hi.arn
}

output "ecr_hi_repo_url" {
  value = aws_ecr_repository.hi.repository_url
}