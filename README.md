Based on: https://lekansogunle.medium.com/using-terraform-iac-to-deploy-your-free-vpn-server-on-aws-933204316980

Create and destroy open vpn server so you paying only while using it.

	

```bash
terraform apply -var server_region="eu-central-1" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"
terraform apply -var server_region="us-east-1" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"
terraform apply -var server_region="ap-south-1" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"
```

Go to admin page settings change pass client traffic to true
save settings
restart the server via the UI popup

```bash
terraform destroy -var server_region="eu-central-1"
terraform destroy -var server_region="us-east-1"
terraform destroy -var server_region="ap-south-1"
```

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https%3A%2F%2Fgithub.com%2Fshmuel-raichman%2Fopenvpn-aws-terraform&cloudshell_print=README.md&cloudshell_open_in_editor=README.md)



```bash
REGION_INDIA="ap-south-1"
REGION_UK="eu-central-1"
REGION_US="us-east-1"
REGION_SOUTH_AF="af-south-1"
REGION_SOUTH_AS="ap-southeast-1" # Philipins if you choose the right zone
REGION_IL="il-central-1" # Israel


REGION=${REGION_US}

terraform init

terraform apply -var server_region="${REGION}" -var server_username="${OPEN_VPN_USER}" -var server_password="${OPEN_VPN_PASS}"
terraform destroy -var server_region="${REGION}"
```
