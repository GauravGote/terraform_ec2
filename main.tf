terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}

provider "aws" {
  
  access_key = "AKIAU6GD3F6ILKYQIBM5"
  secret_key = "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"
  region     = "us-east-1"

}
resource "aws_instance" "myFirstInstance" {
  ami           = "ami-0ee23bfc74a881de5"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver"
  }
}
