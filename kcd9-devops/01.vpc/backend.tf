terraform {
  backend "s3" {
    bucket  = "kcd-cicd-kdyoo"
    key     = "vpc/terraform.state"
    region  = "ap-northeast-2"
    profile = "kcd9"
  }
}
