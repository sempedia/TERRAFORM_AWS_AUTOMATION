# Create a public subnet in the VPC
resource "aws_subnet" "TF_Public_Subnet" {
  vpc_id                  = aws_vpc.TF_VPC.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = element(data.aws_availability_zones.aws_zones.names, 0)
  map_public_ip_on_launch = true

  tags = {
    Name = "TF_Public_Subnet"
  }
}