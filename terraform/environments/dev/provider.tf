terraform {
  required_version = ">=1.6.0"

  backend "s3" {
    bucket       = "aws-cloudops-platform-tfstate-bvs"
    key          = "aws-cloudops-platform/dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
