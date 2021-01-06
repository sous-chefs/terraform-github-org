module "sql_server" {
  source                       = "./modules/repository"
  name                         = "sql_server"
  cookbook_team                = github_team.sql_server.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "sql_server" {
  name        = "sql_server"
  description = "sql_server Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sql_server-maintainer-1" {
  team_id  = github_team.sql_server.id
  username = "ramereth"
  role     = "maintainer"
}
