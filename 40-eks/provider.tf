terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = " 5.83.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-infra-dev-remote-state"
    key    = "roboshop-eks"
    region = "us-east-1"
    dynamodb_table = "roboshop-infra-dev-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}