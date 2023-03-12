provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "helloworld" {
  instance_type = "t2.micro"
  ami           = "ami-06616b7884ac98cdd"
  tags = {
    Name = "HelloWorld"
  }
}
