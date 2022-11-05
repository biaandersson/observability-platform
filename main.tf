resource "random_id" "mtc_node_id" {
  count       = var.instance_count
  byte_length = 2
}

resource "aws_key_pair" "mtc_deployer" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_instance" "mtc_main" {
  instance_type          = var.instance_type
  count                  = var.instance_count
  ami                    = data.aws_ami.server_ami.id
  key_name               = aws_key_pair.mtc_deployer.key_name
  vpc_security_group_ids = [aws_security_group.mtc_security_group.id]
  subnet_id              = aws_subnet.mtc_public_subnet[count.index].id

  provisioner "local-exec" {
    // TODO: Add a check to see if an IP already exists and if so, remove it
    command = "printf '\n${self.public_ip}' >> ./aws_hosts && aws ec2 wait instance-status-ok --instance-ids ${self.id} && sleep 5"
  }

  root_block_device {
    volume_size = var.main_vol_size
  }

  tags = {
    Name = "mtc-main-${random_id.mtc_node_id[count.index].dec}"
  }
}

resource "null_resource" "install_grafana" {
  depends_on = [aws_instance.mtc_main]

  provisioner "local-exec" {
    command = "ansible-playbook -i aws_hosts --key-file ~/.ssh/azureops -u ubuntu playbooks/main-playbook.yml"
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i aws_hosts --key-file ~/.ssh/azureops -u ubuntu playbooks/jenkins-playbook.yml"
  }
}
