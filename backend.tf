terraform {
  backend "gcs" {
    bucket  = "linkage-community-tf"
  }
}
provider "github" {
  token        = "${var.github_token}"
  organization = "linkage-community"
}
