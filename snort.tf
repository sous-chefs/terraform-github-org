module "snort" {
  source                 = "./modules/repository"
  name                   = "snort"
  cookbook_team          = github_team.snort.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "snort" {
  name        = "snort"
  description = "snort Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "snort-maintainer-1" {
  team_id  = github_team.snort.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "snort-maintainer-2" {
  team_id  = github_team.snort.id
  username = "damacus"
  role     = "maintainer"
}

