output "server_details" {
    value = {
        ami = var.ec2_configuration[0]
        instance_type = var.ec2_configuration[1]
    }
}