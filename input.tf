variable "project_name" {
  default = "Roboshop"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "enable_dns_support" {
  default = true
}

variable "enable_dns_hostnames" {
  default = true
}

variable "common_tags" {
  default = {
    Project = "ROBOSHOP"
    Environment = "DEV"
    Terraform = true
  }
}

variable "public_subnet_cidr_block" {
  type = list
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnet_cidr_block" {
  type = list
  default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "database_subnet_cidr_block" {
  type = list
  default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "sg_name" {
  default = "Allow-All"
}

variable "sg_description" {
  default = "This will allow all trafic from internet"
}

variable "sg_ingress_rules" {
  default = [
    {
      description = "Allow Internet Trafic"
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    },
        {
      description = "Allow HTTP Trafic"
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
        {
      description = "Allow HTTPS Trafic"
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "ec2_tags" {
  default = {}
}

variable "instances" {
  default = {
    mongodb = "t3.small"
    mysql = "t3.small"
    web = "t2.micro"
    catalogue = "t2.micro"
    cart = "t2.micro"
    user = "t2.micro"
    shipping = "t2.micro"
    dispatch = "t2.micro"
    redis = "t2.micro"
    rabbitmq = "t2.micro"
    payment = "t2.micro"
  }
}

variable "zone_name" {
  default = "cloudevops.cloud"
}