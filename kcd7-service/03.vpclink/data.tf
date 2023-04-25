data "aws_caller_identity" "current" {}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "kcd-svc-kdyoo"
    key    = "vpc/terraform.state"
    region = "ap-northeast-2"
    profile = "kcd7"
  }
}