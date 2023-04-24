resource "aws_ecr_repository" "hello" {
  name                 = "kcd-cicd-kdyoo-hello-app-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Terraform   = "true"
    Environment = "kcd-cicd-kdyoo"
  }
}

resource "aws_ecr_repository" "hi" {
  name                 = "kcd-cicd-kdyoo-hi-app-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Terraform   = "true"
    Environment = "kcd-cicd-kdyoo"
  }
}