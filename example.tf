provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
  vpc      = true
}

resource "aws_instance" "example" {
  ami  = "ami-b374d5a5"
  instance_type = "t2.micro"
  
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}


