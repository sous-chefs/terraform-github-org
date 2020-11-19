module "nagios" {
  source                       = "./modules/repository"
  name                         = "nagios"
  cookbook_team                = github_team.nagios.id
  has_wiki                     = true
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "nagios" {
  name        = "nagios"
  description = "Nagios Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nagios-maintainer-sbotman" {
  team_id  = github_team.nagios.id
  username = "sbotman"
  role     = "maintainer"
}

resource "github_team_membership" "nagios-maintainer-shoekstra" {
  team_id  = github_team.nagios.id
  username = "shoekstra"
  role     = "maintainer"
}

resource "github_team_membership" "nagios-maintainer-tas50" {
  team_id  = github_team.nagios.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "nagios-maintainer-ryantiger658" {
  team_id  = github_team.nagios.id
  username = "ryantiger658"
  role     = "maintainer"
}

