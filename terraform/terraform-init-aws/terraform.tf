terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
  }
  backend "s3" {
    bucket         = "<BUCKET_NAME>"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = "alias/terraform-bucket-key"
    dynamodb_table = "terraform-state"
  }
  required_version = ">= 1.1"
}

provider "aws" {
  profile = "MAKE_SURE_I_EXIST"
  region  = "eu-west-1"
}
