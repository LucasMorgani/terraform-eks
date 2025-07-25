# Setando a VPC
resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = merge(
    local.tags, # Passando as variaveis do locals, +...
    {
      Name = "${var.project_name}-vpc"
    }
  )
}