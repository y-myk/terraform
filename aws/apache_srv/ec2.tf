resource "aws_key_pair" "import_existing_key" {
  key_name   = var.key_name
  public_key = "${file("id_rsa.pub")}"
}

resource "aws_instance" "ubuntu18-04-LTS" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name = aws_key_pair.import_existing_key.key_name
  vpc_security_group_ids = [ aws_security_group.allow_ssh_http.id ]
  subnet_id = aws_subnet.public.id
  associate_public_ip_address = true
  user_data = "${file("install_apache.sh")}"
  tags = {
    Name = "ubuntu18-04-LTS"
  }
}
