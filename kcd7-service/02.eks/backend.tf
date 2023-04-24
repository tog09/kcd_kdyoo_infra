terraform {
  backend "s3" {
    bucket  = "kcd-svc-kdyoo"
    key     = "eks/terraform.state"
    region  = "ap-northeast-2"
    profile = "kcd7"
  }
}
