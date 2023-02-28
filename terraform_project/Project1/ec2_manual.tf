#HTTP SERVER ->SG
#Security Group (SG)-> Port 80,  Port 22 (SSH),CIDR["0.0.0.0/0"]

#AWS EC2 Keypair variable
variable "aws_key_pair" {
  default = "aws/aws_keys/server_key.pem"
}

#Create Security Group
resource "aws_security_group" "http_server_sg1" {
  name   = "http_server_sg"
  vpc_id = "vpc-0014438aeb78c97c2"
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
  ami           = "ami-0dfcb1ef8550277af"
  key_name      = "server_key"
  instance_type = "t2.micro"
  #vpc_security_group_ids=["sg-094d065742ae3b982"]
  vpc_security_group_ids = [aws_security_group.http_server_sg1.id]
  subnet_id              = "subnet-069174506417545b4"

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
