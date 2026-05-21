provider "aws" {
    region = var.aws_region
  
}

resource "aws_instance" "demo" {
    ami =  var.region_amis[var.aws_region]
    instance_type = "t2.micro"
}