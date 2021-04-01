resource "aws_instance" "MYEC2" {
  ami             = var.ami
  instance_type   = var.instancetype
  count = var.srvrcount
  subnet_id = var.subnet
  root_block_device {
    volume_size = var.storage
   }
  tags = {
    Name = var.nametag
  }
  key_name        = var.keypair
  vpc_security_group_ids = [aws_security_group.allow.id]
}
