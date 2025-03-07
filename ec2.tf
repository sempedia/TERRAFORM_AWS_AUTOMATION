# Configure EC2 Instance with the Amazon Linux 2023 AMI
resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data              = var.user_data_script

  tags = {
    Name = "TF_EC2"
  }
}


resource "aws_instance" "ec2-2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids

  user_data = var.user_data_script

  tags = {
    Name = "TF_EC2_2"
  }
}

