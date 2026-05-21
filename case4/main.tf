provider aws {
    region = "ap-south-1"
}

resource "aws_instance" "demo_tuple" {
    ami = var.ec2_configuration[0]
    instance_type = var.ec2_configuration[1]

    tags = {
        Name = "demo_tuple"
    }
}