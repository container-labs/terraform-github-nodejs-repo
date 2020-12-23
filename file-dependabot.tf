locals {
  bot_yaml = templatefile(
    "${path.module}/files/dependabot.yaml.tpl",
    {
      directory            = var.dependabot_directory
    }
  )
}

resource "github_repository_file" "dependabot" {
  count      = var.dependabot_enabled ? 1 : 0
  repository = var.repository
  branch     = "main"
  file       = ".github/dependabot.yml"
  content    = bot_yaml
}
