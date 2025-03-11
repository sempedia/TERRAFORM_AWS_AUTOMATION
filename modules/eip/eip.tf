
resource "aws_eip" "TF_Elastic_IP" {
  # instance = aws_instance.web.id
  domain     = "vpc"                         # Use domain attribute instead of the deprecated vpc
  # No need to refer to depends_on, we already passed internet_gateway_id as an output from vpc module
  # depends_on = [aws_internet_gateway.TF_IGW] # Make sure the IGW is created before the EIP
}