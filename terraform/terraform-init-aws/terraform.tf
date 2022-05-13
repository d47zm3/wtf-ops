terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
  }

  required_version = ">= 1.1"
}

provider "aws" {
  profile = "MAKE_SURE_I_EXIST"
  region  = "eu-west-1"
}
