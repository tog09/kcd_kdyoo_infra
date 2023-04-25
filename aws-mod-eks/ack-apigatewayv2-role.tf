resource "aws_iam_role" "ack-role" {
  name                = "ack-apigatewayv2-controller"
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Federated": "arn:aws:iam::751218278275:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/FC14B94CE9909D6D93C476EEFF3C6B5A"
        },
        "Action": "sts:AssumeRoleWithWebIdentity",
        "Condition": {
          "StringEquals": {
            "oidc.eks.ap-northeast-2.amazonaws.com/id/FC14B94CE9909D6D93C476EEFF3C6B5A:sub": "system:serviceaccount:ack-system:ack-apigatewayv2-controller"
          }
        }
      }
    ]
  })
  managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonAPIGatewayInvokeFullAccess", "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"]
}
