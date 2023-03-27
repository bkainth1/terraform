

resource "aws_instance" "myec2" {
    ami = "ami-0c75f58fc78dd920e"
    instance_type = lookup(var.instance_type,terraform.workspace)
  
}

variable "instance_type" {
    type = map

    default = {
        default = "t2.nano"
        dev = "t2.micro"
        prod = "t2.large"
    }
  
}
