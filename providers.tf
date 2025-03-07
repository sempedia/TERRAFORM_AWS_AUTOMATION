terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.5.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}


provider "aws" {
  region     = var.aws_region
  access_key = var.TERRAFORM_AWS_ACCESS_KEY
  secret_key = var.TERRAFORM_AWS_SECRET_ACCESS_KEY
}

provider "github" {
  token = var.TERRAFORM_GITHUB_ACCESS_TOKEN
}
