module "mariadb" {
  source                       = "./modules/repository"
  name                         = "mariadb"
  cookbook_team                = github_team.mariadb.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "mariadb" {
  name        = "mariadb"
  description = "mariadb Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mariadb-shoekstra" {
  team_id  = github_team.mariadb.id
  username = "shoekstra"
  role     = "maintainer"
}

resource "github_team_membership" "mariadb-sinfomicien" {
  team_id  = github_team.mariadb.id
  username = "sinfomicien"
  role     = "maintainer"
}

