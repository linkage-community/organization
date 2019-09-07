terraform {
  backend "gcs" {
    bucket  = "linkage-community-tf"
  }
}
provider "github" {
  token        = "${var.github_token}"
  organization = "linkage-community"
}

resource "github_membership" "github_member_tosuke" {
  username = "Tosuke"
  role     = "member"
}
