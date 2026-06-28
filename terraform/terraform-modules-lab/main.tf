module "network" {
  source = "./modules/network"

  project_name       = "terraform-modules-lab"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  availability_zone  = "us-east-1a"
}

module "ec2" {
  source = "./modules/ec2"

  project_name  = "terraform-modules-lab"
  ami_id        = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
  subnet_id     = module.network.public_subnet_id
}
