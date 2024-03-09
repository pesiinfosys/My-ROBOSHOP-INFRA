module "vpc" {
  source = "git::https://github.com/pesiinfosys/Terraform-AWS-VPC.git"
  project_name = var.project_name
  cidr_block = var.cidr_block
  common_tags = var.common_tags
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  public_subnet_cidr_block = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
  database_subnet_cidr_block = var.database_subnet_cidr_block

}