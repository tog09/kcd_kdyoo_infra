data "aws_security_groups" "selected" {
  tags = {
    "ingress.k8s.aws/resource" = "ManagedLBSecurityGroup"
    "ingress.k8s.aws/stack" = "kcd-svc-kdyoo-apps"
  }
}

resource "aws_apigatewayv2_vpc_link" "vpclink" {
  name               = "kcd-svc-kdyoo-vpilink"
  security_group_ids = data.aws_security_groups.selected.ids
  subnet_ids         = data.terraform_remote_state.vpc.outputs.private_subnet_ids

  tags = {
    Terraform = "true"
    Environment = "kcd-svc-kdyoo"
  }
}