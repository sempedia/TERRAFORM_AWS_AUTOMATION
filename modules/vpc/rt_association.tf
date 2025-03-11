# Associate the route table with the subnet 

resource "aws_route_table_association" "TF_RT_Association" {

  subnet_id      = aws_subnet.TF_Public_Subnet.id
  route_table_id = aws_route_table.TF_Public_RT.id
}