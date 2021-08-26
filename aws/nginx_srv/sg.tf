resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http_sg"
  description = "Allow SSH/HTTP inbound connections"
  vpc_id = aws_vpc.aws_demo_vpc.id

  ingress {
    description = "TCP 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TCP 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_http_sg"
  }
}
