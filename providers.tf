provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-project1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-project1"
  }
}
