terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-west-2"
    access_key = var.Access_Key
    secret_key = var.Secret_Key
}