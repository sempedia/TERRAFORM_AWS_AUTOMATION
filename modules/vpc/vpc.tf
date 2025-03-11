# Configure VPC
resource "aws_vpc" "TF_VPC" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "TF_VPC"
  }
}