terraform {
  backend "s3" {
    bucket  = "kcd-svc-kdyoo"
    key     = "vpclink/terraform.state"
    region  = "ap-northeast-2"
    profile = "kcd7"
  }
}
