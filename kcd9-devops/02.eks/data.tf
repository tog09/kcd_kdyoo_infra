data "aws_caller_identity" "current" {}

data "terraform_remote_state" "remote" {
  backend = "s3"
  config = {
    bucket = "kcd-cicd-kdyoo"
    key    = "vpc/terraform.state"
    region = "ap-northeast-2"
    profile = "kcd9"
  }
}