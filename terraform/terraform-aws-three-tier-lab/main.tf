module "networking" {
  source = "./modules/networking"

  project_name        = var.project_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_1     = var.public_subnet_1
  public_subnet_2     = var.public_subnet_2
  private_subnet_1    = var.private_subnet_1
  private_subnet_2    = var.private_subnet_2
  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2
}

module "security" {
  source = "./modules/security"

  project_name = var.project_name
  vpc_id       = module.networking.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  project_name      = var.project_name
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.networking.private_subnet_1_id
  security_group_id = module.security.ec2_security_group_id
}
