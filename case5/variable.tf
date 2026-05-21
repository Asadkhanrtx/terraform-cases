variable "aws_region" {
    type    = string
    default = "ap-south-1"
}

variable "ec2_instance_configuration" {

    type = map(object({
        ami           = string
        instance_type = string
    }))

    default = {
        web_server = {
            ami           = "ami-07a00cf47dbbc844c"
            instance_type = "t2.micro"
        }

        db_server = {
            ami           = "ami-07a00cf47dbbc844c"
            instance_type = "t2.micro"
        }
    }
}