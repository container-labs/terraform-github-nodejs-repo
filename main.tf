
resource "github_actions_secret" "npm_token" {
  repository      = var.repository
  secret_name     = "NPM_TOKEN"
  plaintext_value = var.secret_npm_token
}
