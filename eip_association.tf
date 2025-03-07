resource "aws_eip_association" "EIP_EC2_ASSOCIATION" {
  instance_id   = aws_instance.ec2.id
  allocation_id = aws_eip.TF_Elastic_IP.id
}