variable "repository" {
  default = null
  type    = string
}

variable "secret_npm_token" {
  default   = ""
  type      = string
  sensitive = true
}

variable "npm_package_repo" {
  default = false
  type    = bool
}

variable "dependabot_enabled" {
  default = false
  type    = bool
}

variable "dependabot_directory" {
  default = "/"
  type    = string
}

variable "workspace_image_tag" {
  default = ""
  type    = string
}

variable "workspace_image_digest" {
  default = ""
  type    = string
}
