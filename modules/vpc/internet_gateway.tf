# Create an Internet Gateway
resource "aws_internet_gateway" "TF_IGW" {
  vpc_id = aws_vpc.TF_VPC.id

  tags = {
    Name = "TF_Internet_Gateway"
  }
}