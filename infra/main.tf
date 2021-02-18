terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "dev-FoodDX"
  region  = "ap-southeast-1"
}

resource "aws_instance" "rohan-terraform-test" {

  ami           = "ami-09a6a7e49bd29554b" # ubuntu 20.04
  instance_type = "t2.micro"

  tags = {
    # this is the name in the instance list
    Name = "Rohan-terraform-test"
    # these are other tags
    Owner   = "Rohan"
    Purpose = "Terraform experiments"
  }
}
