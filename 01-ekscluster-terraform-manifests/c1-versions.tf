# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      version = ">= 5.31"      
     }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "eks-tfstate-bucket-gz"
    key    = "eks-cluster/terraform.tfstate"
    region = "eu-central-1" 
 
    # For State Locking
    dynamodb_table = "eks-cluster"    
  }  
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region
}
