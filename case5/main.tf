provider aws {
    region = var.aws_region
}

resource "aws_instance" "group_instance" {
    for_each = var.ec2_instance_configuration
    ami = each.value.ami
    instance_type = each.value.instance_type
    tags = {
        Name = each.key
    }
}