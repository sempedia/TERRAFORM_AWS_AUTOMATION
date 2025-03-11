# Create a Security Group for our VPC so we can have SSH access to the VPC 
# and also allow HTTP calls to the VPC
# HTTP - 80 port
# HTTPS - 443 port
# SSH - 22 port

# ingress - inbound traffic that come from the internet to the VPC
# egress - outbound traffic that go out of the VPC to the internet

resource "aws_security_group" "TF_VPC_SG" {
  name        = "TF_VPC_SG"
  description = "This is the default security group for the TF_VPC"
  vpc_id      = aws_vpc.TF_VPC.id

  # Allow SSH (Port 22)
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTP (Port 80)
  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTPS (Port 443)
  ingress {
    description = "Allow HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
