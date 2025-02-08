# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      version = ">= 5.31"
     }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20"
    }     
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "eks-tfstate-bucket-gz"
    key    = "sampleapp-demo/terraform.tfstate"
    region = "eu-central-1" 

    # For State Locking
    dynamodb_table = "ebs-sampleapp-demo"    
  }    
}

