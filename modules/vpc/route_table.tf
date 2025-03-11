# create a route table
resource "aws_route_table" "TF_Public_RT" {
  vpc_id = aws_vpc.TF_VPC.id

  tags = {
    name = "TF_Public_Route_Table"
  }
}
  