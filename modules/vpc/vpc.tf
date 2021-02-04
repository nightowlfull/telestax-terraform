# Creating a VPC!
resource "aws_vpc" "vpc-network" {
  
  # IP Range for the VPC
  cidr_block = "192.168.0.0/16"
  
  # Enabling automatic hostname assigning
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-network.${var.application}.${var.environment}.telestax-test-task"
    "kubernetes.io/cluster/${var.cluster_name}-${var.application}-${var.environment}-telestax-test-task" = "shared"
  }
}
