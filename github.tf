terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.5.0"
    }
  }
}

provider "github" {
  # Authetication with GitHub using a Token
  token = var.TERRAFORM_GITHUB_ACCESS_TOKEN
}

resource "github_repository" "EC2_TF_Repo" {
  name        = "EC2_TF_Repo"
  description = "AWS EC2 Repository using Terraform"

  visibility = "private" # visibility of your repo on Github
}