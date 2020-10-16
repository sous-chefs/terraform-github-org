module "openldap" {
  source                 = "./modules/repository"
  name                   = "openldap"
  cookbook_team          = github_team.openldap.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "openldap" {
  name        = "openldap"
  description = "openldap Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "openldap-maintainer-1" {
  team_id  = github_team.openldap.id
  username = "ramereth"
  role     = "maintainer"
}
