
resource "github_repository" "EC2_TF_Repo" {
  name        = "EC2_TF_Repo"
  description = "AWS EC2 Repository using Terraform"

  visibility = "private" # visibility of your repo on Github
}