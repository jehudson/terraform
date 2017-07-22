provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}



resource "aws_instance" "ubuntu-test" {

ami                    = "ami-2757f631"
instance_type          = "t2.micro"
key_name               = "gonad"
security_groups        = ["ssh_allow_all"]
}


resource "aws_security_group" "ssh_allow_all" {
  name               = "ssh_allow_all"
  description        = "Allow all inbound SSH traffic"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "ssh_allow_all"
  }
}

