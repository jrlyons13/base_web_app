variable "aws_access_key" {
  type        = string
  description = "AWS access key"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
  sensitive   = true
}

variable "aws_region" {
  type        = string
  description = "AWS region for deployment"
  default     = "us-west-2"
}
### Local values will go here

variable "company" {
  type        = string
  description = "Company name resource tagging"
  default     = "NorthWest"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
}

variable "instance_type" {
  type        = string
  description = "Type for EC2 instance"
  default     = "t3.micro"
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public IP address for subnet instances"
  default     = true
}

variable "vpc_public_subnets_cidr_block" {
  type        = list(string)
  description = "CDIR Block for public subnets in VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS Hostnames in VPC"
  default     = true
}