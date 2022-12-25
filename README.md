Based on: https://lekansogunle.medium.com/using-terraform-iac-to-deploy-your-free-vpn-server-on-aws-933204316980

Create and destroy open vpn server so you paying only while using it.


```bash
terraform apply -var server_region="eu-central-1" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"
terraform apply -var server_region="us-east-1" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"
```