### Creating Roboshop Instances (11-instances)
module "ec2" {
    for_each = var.instances
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.devops-practice.id
  instance_type          = each.value
  vpc_security_group_ids = [local.allow_all_sg_id]
#   subnet_id              = local.public_subnet_ids[0] # This means public subnet in 1a availability zone
  subnet_id              = each.key == "web" ? local.public_subnet_ids[0] : local.private_subnet_ids[0]


  tags = merge(
    var.common_tags,
    {
        Name = each.key
    },
    var.ec2_tags
  )
}

# Creating ec2 instance for ANSIBLE Server
module "ec2_ansible" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.devops-practice.id
  instance_type          = "t3.small"
  vpc_security_group_ids = [local.allow_all_sg_id]
  subnet_id              = local.public_subnet_ids[0]
  user_data              = file("roboshop.sh")

  tags = merge(
    var.common_tags,
    {
        Name = "Ansible"
    }
   
  )
}
