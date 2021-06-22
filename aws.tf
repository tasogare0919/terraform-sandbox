terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    encrypt = true
    bucket = "tady-tfstate-130459222683"
    dynamodb_table = "terraform-state-lock"
    key =  "terraform/codebuild-terraform.tfstate"
    region = "ap-northeast-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

provider "aws" {
    region = "ap-northeast-1"
}