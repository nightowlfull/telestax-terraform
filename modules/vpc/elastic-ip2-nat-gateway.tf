# Creating an Elastic IP for the NAT Gateway!
resource "aws_eip" "nat-gateway2-eip" {
  depends_on = [
    aws_route_table_association.internet-gateway-route-association
  ]
  tags = {
    Name = "nat-gateway2-eip.${var.application}.${var.environment}.telestax-test-task"
  }
  vpc = true
}
