resource "aws_instance" "mtc_main" {
  ami                    = data.aws_ami.server_ami.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.mtc_security_group.id]
  subnet_id              = aws_subnet.mtc_public_subnet[0].id

  root_block_device {
    volume_size = var.main_vol_size
  }

  tags = {
    Name = "mtc_main"
  }
}
