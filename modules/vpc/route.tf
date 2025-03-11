# create a route for the route table 
resource "aws_route" "TF_Route" {
  route_table_id         = aws_route_table.TF_Public_RT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.TF_IGW.id

}