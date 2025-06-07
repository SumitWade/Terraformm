provider "aws" {
 region = "eu-west-2"
}


resource "aws_instance" "ec2" {
    ami = "ami-0bc8d5c547360e648"
    instance_type = "t2.micro"
    security_groups = [ "default" ]
    key_name = "sumit-london"

   tags =   {   
    Name =  "my-terraform-instance"
   }
}