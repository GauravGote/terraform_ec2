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
resource "aws_instance" "web" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver"
  }
}
