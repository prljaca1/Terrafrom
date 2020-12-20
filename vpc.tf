resource "aws_vpc" "my_vpc" {
  count            = terraform.workspace == "dev" ? 0 : 1
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"


  tags = {
    Name        = "DevOpsVPC"
    Environment = terraform.workspace
    Location    = "USA"
  }
}
