locals {
  devcontainer_dockerfile = templatefile(
    "${path.module}/files/gitpod/gitpod.Dockerfile.tpl",
    {
      # directory            = var.dependabot_directory
    }
  )
  devcontainer_json = templatefile(
    "${path.module}/files/gitpod/gitpod.yml.tpl",
    {
      # directory            = var.dependabot_directory
    }
  )
}

resource "github_repository_file" "devcontainer_dockerfile" {
  repository = var.repository
  branch     = "main"
  file       = ".devcontainer/Dockerfile"
  content    = devcontainer_dockerfile
}

resource "github_repository_file" "devcontainer_json" {
  repository = var.repository
  branch     = "main"
  file       = ".devcontainer/devcontainer.json"
  content    = devcontainer_json
}