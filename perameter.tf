resource "aws_ssm_parameter" "vpc_id" {
  name  = "/Roboshop/DEV/vpc_id" # here '/' not indicating directory, it's just for our understanding purpose../project/env/key-name.(This pattern is not mandatory)
  type  = "String"
  value = local.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/Roboshop/DEV/public_subnet_ids"
  type  = "String"
  value = join(",",local.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/Roboshop/DEV/private_subnet_ids"
  type  = "String"
  value = join(",",local.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/Roboshop/DEV/database_subnet_ids"
  type  = "String"
  value = join(",",local.database_subnet_ids)
}

resource "aws_ssm_parameter" "allow_all_sg_id" {
  name  = "/Roboshop/DEV/allow_all_security_group_id"
  type  = "String"
  value = local.allow_all_sg_id
}