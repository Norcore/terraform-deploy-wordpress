variable "aws_profile" {
    type    = string
    default = "default"
}

variable "aws_region" {
    type    = string
    default = "eu-central-1"
}

variable "project_name" {
    type    = string
    default = "terra-mars"
}

variable "vpc_id" {
    type    = string
    default = "vpc-0530f47401f40cea3"
}

variable "subnet_id_a" {
    type    = string
    default = "subnet-1981e862"
}

variable "subnet_a_cidr" {
    type    = string
    default = "172.31.32.0/20"
}

variable "subnet_b_cidr" {
    type    = string
    default = "172.31.0.0/20"
}

variable "subnet_c_cidr" {
    type    = string
    default = "172.31.16.0/20"
}

variable "rds_name" {
    type        = string
    default     = "wordpress"
}
variable "rds_username" {
    type        = string
    default     = "user"
    sensitive   = true
}

variable "rds_password" {
    type        = string
    default     = "12345678"
    sensitive   = true 
}