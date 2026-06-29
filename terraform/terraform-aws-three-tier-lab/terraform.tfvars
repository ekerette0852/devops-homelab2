project_name = "terraform-aws-three-tier-lab"

vpc_cidr = "10.0.0.0/16"

public_subnet_1 = "10.0.1.0/24"
public_subnet_2 = "10.0.2.0/24"

private_subnet_1 = "10.0.11.0/24"
private_subnet_2 = "10.0.12.0/24"

availability_zone_1 = "us-east-1a"
availability_zone_2 = "us-east-1b"

ami_id        = "ami-0c02fb55956c7d316"
instance_type = "t3.micro"
