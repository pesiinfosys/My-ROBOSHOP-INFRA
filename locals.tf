# These values we are taking from output.tf files of corresponding modules
locals {
  vpc_id = module.vpc.vpc_id
  azs = module.vpc.azs
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  database_subnet_ids = module.vpc.database_subnet_ids
  allow_all_sg_id = module.sg.sg_id
  instance_ip = module.ec2
}