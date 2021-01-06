module "chef-splunk" {
  source                       = "./modules/repository"
  name                         = "chef-splunk"
  cookbook_team                = github_team.chef-splunk.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "chef-splunk" {
  name        = "chef-splunk"
  description = "chef-splunk Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-splunk-maintainer-1" {
  team_id  = github_team.chef-splunk.id
  username = "ramereth"
  role     = "maintainer"
}
