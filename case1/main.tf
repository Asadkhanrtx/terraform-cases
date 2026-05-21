terraform {
    required_providers {
        aws = {
            source = "registry.terraform.io/hashicorp/aws"
            version = "6.44.0"
        }
    }

}

provider "aws" {
    region = var.aws_region
  
}

variable "aws_region" {
    type = string
    default = "ap-south-1"
}

resource "aws_vpc" "prod_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "prod_vpc"
    }
}