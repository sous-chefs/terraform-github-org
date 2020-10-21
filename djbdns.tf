module "djbdns" {
  source                 = "./modules/repository"
  name                   = "djbdns"
  cookbook_team          = github_team.djbdns.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "djbdns" {
  name        = "djbdns"
  description = "djbdns Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "djbdns-maintainer-1" {
  team_id  = github_team.djbdns.id
  username = "ramereth"
  role     = "maintainer"
}
