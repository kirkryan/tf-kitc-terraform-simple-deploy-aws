terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "kirkprivate"
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-063d4ab14480ac177"
  instance_type = "t2.micro"

  tags = {
    Name = "KITCExampleAppServer"
  }
}