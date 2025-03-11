resource "aws_eip_association" "EIP_EC2_ASSOCIATION" {
  instance_id = var.ec2_instance_id   # Use the passed EC2 instance ID
  allocation_id = aws_eip.TF_Elastic_IP.id
}