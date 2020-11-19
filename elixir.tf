module "elixir" {
  source                       = "./modules/repository"
  name                         = "elixir"
  cookbook_team                = github_team.elixir.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "elixir" {
  name        = "elixir"
  description = "elixir Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "elixir-maintainer-1" {
  team_id  = github_team.elixir.id
  username = "tas50"
  role     = "maintainer"
}
