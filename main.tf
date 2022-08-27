terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"

  tags = {
    Name = "skillmix-lab-instance"
  }
}