module "yum-erlang_solutions" {
  source                       = "./modules/repository"
  name                         = "yum-erlang_solutions"
  cookbook_team                = github_team.yum-erlang_solutions.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-erlang_solutions" {
  name        = "yum-erlang_solutions"
  description = "yum-erlang_solutions Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-erlang_solutions-maintainer-1" {
  team_id  = github_team.yum-erlang_solutions.id
  username = "ramereth"
  role     = "maintainer"
}
