terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.1"
    }
  }
  backend "s3" {
    bucket = "d4rkr0n1n-capstone-bucket"
    key    = "keys/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state"
  }
}

provider "aws" {
  # Configuration options
  region="us-east-1"
}