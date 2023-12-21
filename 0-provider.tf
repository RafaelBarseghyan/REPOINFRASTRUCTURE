provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket         = "amazon999-eks-terraform-backend"
      key            = "terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "terraform_state"
    }

}
