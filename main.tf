provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "myec2" {
    ami = "ami-0c75f58fc78dd920e"
    instance_type = "t2.micro"
  
}

