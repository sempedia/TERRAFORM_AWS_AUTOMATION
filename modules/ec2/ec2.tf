# Configure EC2 Instance with the Amazon Linux 2023 AMI
resource "aws_instance" "ec2" {
  count = var.aws_instance_count # create similar EC2 instances as the default number says
  ami   = var.ami_id
  # instance_type          = element(var.instance_types, var.instance_index)  # Select instance type dynamically
  instance_type          = var.instance_types[local.instance_index] # Use the computed index from locals
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data              = var.user_data_script
  availability_zone      = element(data.aws_availability_zones.aws_zones.names, 0) # Picks the first available AZ
  subnet_id              = var.subnet_id                         # Attach the EC2 to the public subnet
  tags = {
    Name = "TF_EC2_${count.index}" # The distinct index number (starting with 0) corresponding to the instance
  }

  lifecycle {
    create_before_destroy = true # first create the new resource and then destroy the old one
    # prevent_destroy       = true # do not destroy this resource with terraform destroy command
    # ignore_changes        = [tags, ] # Ignore changes to the 'tags' attribute (useful for external modifications)
  }

  # depends_on = [module.vpc.internet_gateway_id] # Ensure the IGW is created first
}


