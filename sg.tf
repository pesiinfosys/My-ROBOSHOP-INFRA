module "sg" {
  source = "../Terraform-AWS-SecurityGroups"
  sg_name = var.sg_name
  sg_description = var.sg_description
  vpc_id = local.vpc_id
  common_tags = var.common_tags
  project_name = var.project_name
  ingress_rules = var.sg_ingress_rules
}