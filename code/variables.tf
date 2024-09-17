variable "region" {
  description = "Main region for all resources"
  type        = string
}

variable "hosted_zone_name" {
  default     = "ronarc.click"
  type        = string
  description = "The name of the hosted zone of the Route53 domain"
}

variable "hosted_zone_id" {
  type        = string
  description = "The id of the hosted zone of the Route53 domain"
}

variable "record_name" {
  default     = "www"
  type        = string
  description = "The sub hosted zone of the Route53 domain"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the main VPC"
}

variable "public_subnet_1" {
  type        = string
  description = "CIDR block for public subnet 1"
}

variable "public_subnet_2" {
  type        = string
  description = "CIDR block for public subnet 2"
}

variable "private_subnet_1" {
  type        = string
  description = "CIDR block for private subnet 1"
}

variable "private_subnet_2" {
  type        = string
  description = "CIDR block for private subnet 2"
}

variable "availibilty_zone_1" {
  type        = string
  description = "First availibility zone"
}

variable "availibilty_zone_2" {
  type        = string
  description = "First availibility zone"
}
  
variable "default_tags" {
  type = map
  default = {
    Application = "Demo App"
    Environment = "Dev"
  }
}

variable "container_port" {
  description = "Port that needs to be exposed for the application"
}

variable "shared_config_files" {
  description = "Path of your shared config file in .aws folder"
}

variable "shared_credentials_files" {
  description = "Path of your shared credentials file in .aws folder"
}