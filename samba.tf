module "samba" {
  source        = "./modules/repository"
  name          = "samba"
  cookbook_team = github_team.samba.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "samba" {
  name        = "samba"
  description = "Samba Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "samba-maintainer" {
  team_id  = github_team.samba.id
  username = "damacus"
  role     = "maintainer"
}

