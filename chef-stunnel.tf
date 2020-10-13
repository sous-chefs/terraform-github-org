module "chef-stunnel" {
  source                 = "./modules/repository"
  name                   = "chef-stunnel"
  cookbook_team          = github_team.chef-stunnel.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "chef-stunnel" {
  name        = "chef-stunnel"
  description = "chef-stunnel Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-stunnel-maintainer-1" {
  team_id  = github_team.chef-stunnel.id
  username = "tas50"
  role     = "maintainer"
}
