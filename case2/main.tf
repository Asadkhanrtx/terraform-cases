terraform {
    required_providers {
        aws = {
            source = "registry.terraform.io/hashicorp/aws"
            version = "6.44.0"       
        }
    }
}

provider aws {
    region = "ap-south-1"
}

resource "aws_subnet" "public_subnet" {
    count = length(var.azs)
    vpc_id = "vpc-060d19b501fad194d"
    cidr_block = cidrsubnet("10.0.0.0.0/16" , 4, count.index)
  availability_zone =var.azs[count.index]
}
variable "azs" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}