module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "security_group" {
  source = "../../modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "../../modules/ec2"
  instance_type     = var.instance_type
  security_group_id = module.security_group.security_group_id
  subnet_id         = module.vpc.subnet_id
}
