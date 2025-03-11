resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = var.repo_visibility

  lifecycle {
    create_before_destroy = true
  }
}
