# B"H
resource "aws_instance" "openvpn" {
  ami                    = local.images[var.server_region]
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<-EOF
              admin_user=${var.server_username}
              admin_pw=${var.server_password}
              EOF

  tags = {
    Name = "openvpn"
  }
} 


# terraform apply -var server_region="eu-central-1" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"
# terraform apply -var server_region="us-east-1" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"