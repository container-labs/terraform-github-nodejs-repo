resource "github_repository_file" "dependabot" {
  count      = var.dependabot_simple ? 1 : 0
  repository = var.repository
  branch     = "main"
  file       = ".github/dependabot.yml"
  content    = file("${path.module}/files/dependabot.yml")
}
