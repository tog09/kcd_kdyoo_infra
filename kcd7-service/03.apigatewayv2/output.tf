output "vpc_link_id" {
  description = "VPC LINK ID"
  value       = aws_apigatewayv2_vpc_link.vpclink.id
}

output "apigatewayv2_name" {
  value = aws_apigatewayv2_api.apigw.name
}