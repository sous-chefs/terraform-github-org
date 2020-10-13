module "sc-chruby" {
  source                 = "./modules/repository"
  name                   = "sc-chruby"
  cookbook_team          = github_team.sc-chruby.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "sc-chruby" {
  name        = "sc-chruby"
  description = "sc-chruby Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sc-chruby-maintainer-1" {
  team_id  = github_team.sc-chruby.id
  username = "damacus"
  role     = "maintainer"
}
