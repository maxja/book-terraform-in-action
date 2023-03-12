provider "aws" {
  region = "eu-central-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-*-amd64-server-*"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "helloworld" {
  instance_type = "t2.micro"
  ami           = data.aws_ami.ubuntu.id
  tags = {
    Name = "HelloWorld"
  }
}
