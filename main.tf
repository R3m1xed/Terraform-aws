terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-2"
}




# # Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
# }

##moved to modules 
# resource "aws_s3_bucket" "file_bucket" {
#   bucket = "my-tf-file-bucket-${var.env}"
# }

module "s3_bucket_module" {
  source = "./modules/storage"
  env    = var.env
}