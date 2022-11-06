variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.123.0.0/16"
  type        = string
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for the public subnet"
  default     = ["eu-north-1a", "eu-north-1b"]
}

variable "access_ip" {
  description = "IP address to allow access to the bastion host"
  default     = ["213.113.67.149/32"]
  type        = list(string)
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}


variable "main_vol_size" {
  type    = number
  default = 8
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "key_name" {
  type = string
}

variable "public_key_path" {
  type = string
}
