terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.28.0"
    }
  }
}
provider "aws" {
  # Configuration options
  region = var.region
}

# create vpc
module "vpc" {
  source               = "../module/vpc"
  publicsubnet         = var.publicsubnet
  privatesubnet        = var.privatesubnet
  datasubnet           = var.datasubnet
  region               = var.region
  project_name         = var.project_name
  az                   = var.az
  cidr_block           = var.cidr_block
}


