provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-02d26659fd82cf299" # Amazon Ubuntu Server 
  instance_type = "t2.micro"
  key_name      = "mern-key-vigneshb10"

  vpc_security_group_ids = [aws_security_group.web_sg_vignesh.id]

  tags = {
    Name = "web-server-vignesh"
  }
}

resource "aws_instance" "db" {
  ami           = "ami-02d26659fd82cf299"
  instance_type = "t2.micro"
  key_name      = "mern-key-vigneshb10"

  vpc_security_group_ids = [aws_security_group.db_sg_vignesh.id]

  tags = {
    Name = "db-server-vignesh"
  }
}

resource "aws_security_group" "web_sg_vignesh" {
  name        = "web-sg-vignesh"
  description = "Allow HTTP, HTTPS, SSH and application ports"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "db_sg_vignesh" {
  name        = "db-sg-vignesh"
  description = "Allow MongoDB from web server"

  ingress {
    from_port       = 27017
    to_port         = 27017
    protocol        = "tcp"
    security_groups = [aws_security_group.web_sg_vignesh.id]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}