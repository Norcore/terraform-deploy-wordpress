terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

  provider "aws" {
  profile   = "${var.aws_profile}"
  region    = "${var.aws_region}"
}

  terraform {
    required_version = "~> 1.0"
    backend "s3" {
    bucket         	   = "terra-mars"
    key                = "statefile.tfstate"
    region         	   = "eu-central-1"
    encrypt        	   = true
    dynamodb_table = "terra-mars"
  }
}
