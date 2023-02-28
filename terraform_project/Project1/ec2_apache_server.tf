
#Script to create Apache Server 
#AWS EC2 Keypair variable
variable "aws_key_pair" {
  default = "aws/aws_keys/server_key.pem"
}

#data providers
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

data "aws_subnets" "default_subnets" {
  filter {
    name   = "vpc-id"
    values = [aws_default_vpc.default.id]

  }
}

data "aws_ami" "aws_linux_2_latest" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}
data "aws_ami_ids" "aws_linux_2_latest_ids" {
  owners = ["amazon"]
}


#Create Security Group
resource "aws_security_group" "http_server_sg1" {
  name   = "http_server_sg"
  vpc_id = aws_default_vpc.default.id
  ingress {
    description = "Web"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = {
    name = "http_server_sg"
  }
}
#Create EC2 instances

resource "aws_instance" "http_server" {
  ami           = data.aws_ami.aws_linux_2_latest.id
  key_name      = "server_key"
  instance_type = "t2.micro"
  #vpc_security_group_ids=["sg-094d065742ae3b982"]
  vpc_security_group_ids = [aws_security_group.http_server_sg1.id]
  subnet_id              = data.aws_subnets.default_subnets.ids[0]

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file(var.aws_key_pair)
  }
  provisioner "remote-exec" {
    inline = [
      //install http server , Start Server & copy Files
      "sudo yum install httpd -y",
      "sudo service httpd start",
      "echo Welcome to Remote Server ${self.public_dns} | sudo tee /var/www/html/index.html"

    ]
  }


}
