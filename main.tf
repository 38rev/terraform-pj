terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
}
resource "aws_instance" "web" {
  ami           = "ami-09ed8fb06b42a771d"
  instance_type = "t3.micro"
  count = "2"

  tags = {
    Name = "HelloWorld"
  }
}
