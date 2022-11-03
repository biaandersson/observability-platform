variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.123.0.0/16"
  type        = string
}

variable "public_cidrs" {
  type        = list(string)
  description = "CIDR block for the public subnet"
  default     = ["10.123.1.0/24", "10.123.2.0/24"]
}

variable "private_cidrs" {
  type        = list(string)
  description = "CIDR block for the private subnet"
  default     = ["10.123.3.0/24", "10.123.4.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for the public subnet"
  default     = ["eu-north-1a", "eu-north-1b"]
}
