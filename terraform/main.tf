provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "./terraform/modules/vpc"
  name       = var.name
  cidr_block = var.vpc_cidr
  azs        = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "eks" {
  source              = "./terraform/modules/eks"
  cluster_name        = var.name
  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids
}

module "alb" {
  source             = "./terraform/modules/alb"
  name               = var.name
  public_subnet_ids  = module.vpc.public_subnet_ids
  vpc_id             = module.vpc.vpc_id
  cluster_name       = module.eks.cluster_name
  service_name       = "flask-ip-api"
}
