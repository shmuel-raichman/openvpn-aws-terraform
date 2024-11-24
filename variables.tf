# B"H
variable "server_region" {
  description = "Region to deploy server"
  type        = string
  default     = "eu-central-1"
}

variable "server_username" {
  description = "Admin Username to access server"
  type        = string
  default     = "openvpn"
}

variable "server_password" {
  description = "Admin Password to access server"
  type        = string
  default     = "password"
}

# Specify 3 availability zones from the region
variable "availability_zones" {
  default = ["us-east-1a"]
}

variable "instance_type" {
  description = "Instance type to deploy"
  type        = string
  default     = "t3.micro"
  # default     = "c5.large"
}
