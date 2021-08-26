output "instance_public_ip" {
  value = "${aws_instance.ubuntu18-04-LTS.public_ip}"
}
