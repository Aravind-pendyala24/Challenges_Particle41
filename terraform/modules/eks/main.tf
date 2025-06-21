module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.31"
  subnets         = var.private_subnet_ids
  vpc_id          = var.vpc_id

  eks_managed_node_groups = {
    default = {
      instance_types = ["t2.micro"]
      desired_size   = 2
      max_size       = 3
      min_size       = 1
    }
  }
}
