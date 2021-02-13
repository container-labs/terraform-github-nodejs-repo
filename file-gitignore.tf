resource "github_actions_secret" "npm_token" {
  count           = length(var.secret_npm_token) > 0 ? 1 : 0
  repository      = var.repository
  secret_name     = "NPM_TOKEN"
  plaintext_value = var.secret_npm_token
}

module "gitignore" {
  source     = "container-labs/gitignore/github"
  version    = "~> 2.8"
  repository = var.repository
  ignores = [
    "osx",
    "windows",
    "node",
    "react"
  ]
}
