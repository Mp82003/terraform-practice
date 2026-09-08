module "vpc" {
  source      = "../../modules/vpc"
  cidr_block  = "10.1.0.0/16"
  subnet_cidr = "10.1.1.0/24"
}

module "security_group" {
  source = "../../modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "../../modules/ec2"
  instance_type     = "t3.micro"
  security_group_id = module.security_group.security_group_id
  subnet_id         = module.vpc.subnet_id
}
