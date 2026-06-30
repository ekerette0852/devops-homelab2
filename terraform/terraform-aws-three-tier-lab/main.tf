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

module "alb" {
  source = "./modules/alb"

  project_name          = var.project_name
  vpc_id                = module.networking.vpc_id
  public_subnet_1_id    = module.networking.public_subnet_1_id
  public_subnet_2_id    = module.networking.public_subnet_2_id
  alb_security_group_id = module.security.alb_security_group_id
  instance_id           = module.ec2.instance_id
}

module "autoscaling" {
  source = "./modules/autoscaling"

  project_name          = var.project_name
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  ec2_security_group_id = module.security.ec2_security_group_id
  private_subnet_1_id   = module.networking.private_subnet_1_id
  private_subnet_2_id   = module.networking.private_subnet_2_id
  target_group_arn      = module.alb.target_group_arn
}

module "rds" {
  source = "./modules/rds"

  project_name         = var.project_name
  private_subnet_1_id  = module.networking.private_subnet_1_id
  private_subnet_2_id  = module.networking.private_subnet_2_id
  db_security_group_id = module.security.db_security_group_id
  db_username          = var.db_username
  db_password          = var.db_password
}
