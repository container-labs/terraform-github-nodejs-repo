locals {
  gitpod_dockerfile = templatefile(
    "${path.module}/files/gitpod/gitpod.Dockerfile.tpl",
    {
      # directory            = var.dependabot_directory
    }
  )
  gitpod_yaml = templatefile(
    "${path.module}/files/gitpod/gitpod.yml.tpl",
    {
      # directory            = var.dependabot_directory
    }
  )
}

resource "github_repository_file" "gitpod_dockerfile" {
  repository = var.repository
  branch     = "main"
  file       = ".devcontainer/gitpod.Dockerfile"
  content    = gitpod_dockerfile
}

resource "github_repository_file" "gitpod_yaml" {
  repository = var.repository
  branch     = "main"
  file       = ".gitpod.yml"
  content    = gitpod_yaml
}