resource "aws_ecr_repository" "app" {
  name                 = "kcd-cicd-kdyoo-app-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Terraform   = "true"
    Environment = "kcd-cicd-kdyoo"
  }
}