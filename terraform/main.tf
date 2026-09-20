# Purpose: Define the root Terraform resources and compose the platform modules.
locals {
  project_name = "gitops-eks-platform"
}

module "vpc" {
  source = "./modules/vpc"

  name                 = local.project_name
  cluster_name         = var.cluster_name
  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  single_nat_gateway   = var.single_nat_gateway
}