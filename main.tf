module "vpc" {
  source             = "./modules/vpc"
  name               = "demo"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  az                 = "eu-north-1a"
}

module "ec2" {
  source    = "./modules/ec2"
  name      = "demo"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
output "instance_id" {
  value = module.ec2.instance_id
}
output "public_ip" {
  value = module.ec2.public_ip
}
output "web_url" {
  value = "http://${module.ec2.public_ip}"
}
