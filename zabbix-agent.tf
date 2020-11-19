module "zabbix-agent" {
  source                       = "./modules/repository"
  name                         = "zabbix-agent"
  cookbook_team                = github_team.zabbix-agent.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "zabbix-agent" {
  name        = "zabbix-agent"
  description = "zabbix-agent Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "zabbix-agent-maintainer-1" {
  team_id  = github_team.zabbix-agent.id
  username = "TD-4242"
  role     = "maintainer"
}

resource "github_team_membership" "zabbix-agent-maintainer-2" {
  team_id  = github_team.zabbix-agent.id
  username = "Xorima"
  role     = "maintainer"
}

