resource "github_repository_file" "npm-publish" {
  count      = var.npm_package_repo ? 1 : 0
  repository = var.repository
  branch     = "main"
  file       = ".github/workflows/npm-publish.yml"
  content    = file("${path.module}/files/actions/npm-publish.yml")
}
