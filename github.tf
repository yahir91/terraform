terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
    token= "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"
}

resource "github_repository" "example" {
  name        = "terraform"
  description = "Project to learn terraform"
  visibility = "public"
}