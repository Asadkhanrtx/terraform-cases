variable "region_amis" {
    type = map(string)
    default = {
        "ap-south-1" = "ami-07a00cf47dbbc844c"
    }

    }
variable "aws_region" {
    type = string
    default= "ap-south-1"
}

