provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "helloworld" {
  instance_type = "t2.micro"
  ami           = "ami-0a8ab3a7d5059c328"
  tags = {
    Name = "HelloWorld"
  }
}
