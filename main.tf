resource "github_actions_secret" "npm_token" {
  count = var.secret_npm_token ? 1 : 0
  repository      = var.repository
  secret_name     = "NPM_TOKEN"
  plaintext_value = var.secret_npm_token
}

module "gitignore" {
  source = "containerlabs/gitignore/github"

}
