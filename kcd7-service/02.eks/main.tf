module "eks" {
  source = "../../aws-mod-eks"
  cluster_name = "kcd-svc-kdyoo-cluster"
  cluster_version = "1.26"
  vpc_id = data.terraform_remote_state.remote.outputs.vpc_id
  account_id = data.aws_caller_identity.current.account_id

  private_subnets = data.terraform_remote_state.remote.outputs.private_subnet_ids
  public_subnets  = data.terraform_remote_state.remote.outputs.public_subnet_ids
}
