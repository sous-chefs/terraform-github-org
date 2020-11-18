module "mysql" {
  source                       = "./modules/repository"
  name                         = "mysql"
  description                  = "Sous Chefs MySQL Cookbook"
  cookbook_team                = github_team.mysql.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "mysql" {
  name        = "mysql"
  description = "mysql Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mysql-maintainer-1" {
  team_id  = github_team.mysql.id
  username = "rshade"
  role     = "maintainer"
}

resource "github_team_membership" "mysql-maintainer-2" {
  team_id  = github_team.mysql.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "mysql-maintainer-3" {
  team_id  = github_team.mysql.id
  username = "iennae"
  role     = "maintainer"
}

