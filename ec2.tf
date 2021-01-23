resource "aws_instance" "Node-2" {
  ami                    = "ami-00e8b55a2e841be44"
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["${aws_security_group.Node2-Sg.id}"]
  key_name               = "LinuxKeyPair"
  user_data              = file("${path.module}/Data/data.sh")

  tags = {
    Name = "Node-1-server"
  }

}
