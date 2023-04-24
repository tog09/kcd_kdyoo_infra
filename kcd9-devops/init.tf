terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46"
    }
  }
}

provider "aws" {
  profile = "kcd9"
  region  = "ap-northeast-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "kcd-cicd-kdyoo"

  tags = {
    Terraform = "true"
    Environment = "kcd-cicd-kdyoo"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
