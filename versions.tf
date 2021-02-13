terraform {
  required_providers {
    github = {
      source = "integrations/github"
      # check back for 3.0
      # https://github.com/terraform-providers/terraform-provider-github/blob/master/CHANGELOG.md
      version = "~> 4.4"
    }
  }
  required_version = ">= 0.13"
}
