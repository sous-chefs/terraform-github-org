module "sssd_ldap" {
  source                       = "./modules/repository"
  name                         = "sssd_ldap"
  cookbook_team                = github_team.sssd_ldap.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "sssd_ldap" {
  name        = "sssd_ldap"
  description = "sssd_ldap Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sssd_ldap-maintainer-1" {
  team_id  = github_team.sssd_ldap.id
  username = "ramereth"
  role     = "maintainer"
}
