module "zabbix-agent" {
  source         = "modules/repository"
  name           = "zabbix-agent"
  cookbook_team  = "${github_team.zabbix-agent.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "zabbix-agent" {
  name        = "zabbix-agent"
  description = "zabbix-agent Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "zabbix-agent-maintainer-1" {
  team_id  = "${github_team.zabbix-agent.id}"
  username = "TD-4242"
  role     = "maintainer"
}
