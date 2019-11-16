data "github_repository" "mozuku" {
  full_name = "linkage-community/mozuku"
}

resource "github_membership" "otofune" {
  username = "otofune"
  role     = "admin"
}

resource "github_team" "developers" {
  name        = "developers"
}
resource "github_team_repository" "dev_mozuku" {
  team_id    = "${github_team.developers.id}"
  repository = "${data.github_repository.mozuku.name}"
  permission = "admin"
}
resource "github_team_membership" "otofune" {
  team_id  = "${github_team.developers.id}"
  username = "${github_membership.otofune.username}"
  role = "maintainer"
}

resource "github_membership" "tosuke" {
  username = "Tosuke"
  role = "admin"
}
resource "github_team_membership" "dev_tosuke" {
  team_id  = "${github_team.developers.id}"
  username = "${github_membership.tosuke.username}"
}

resource "github_membership" "rinsuki" {
  username = "rinsuki"
}
resource "github_team_membership" "dev_rinsuki" {
  team_id  = "${github_team.developers.id}"
  username = "${github_membership.rinsuki.username}"
}

resource "github_membership" "ci7lus" {
  username = "ci7lus"
}
resource "github_team_membership" "ci7lus" {
  team_id  = "${github_team.developers.id}"
  username = "${github_membership.ci7lus.username}"
}

resource "github_membership" "p-chan" {
  username = "p-chan"
}
resource "github_team_membership" "p-chan" {
  team_id  = "${github_team.developers.id}"
  username = "${github_membership.p-chan.username}"
}
