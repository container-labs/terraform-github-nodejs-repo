variable "repository" {
  default = null
}

variable "secret_npm_token" {
  default = ""
}

variable "npm_package_repo" {
  default = false
}

variable "dependabot_enabled" {
  default = false
}

variable "dependabot_directory" {
  default = "/"
}
