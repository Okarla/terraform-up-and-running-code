
provider "aws" {
    region = "us-east-2"
  
}


terraform {
  backend "s3" {
    bucket = "kg-terraform-practice"
    key = "workspaces-example/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "kg-terraform-up-and-running-locks"
    encrypt = true
    
  }
}


resource "aws_instance" "example" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
}

