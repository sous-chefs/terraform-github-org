module "yum-mysql-community" {
  source                 = "./modules/repository"
  name                   = "yum-mysql-community"
  cookbook_team          = github_team.yum-mysql-community.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "yum-mysql-community" {
  name        = "yum-mysql-community"
  description = "yum-mysql-community Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-mysql-community-maintainer-1" {
  team_id  = github_team.yum-mysql-community.id
  username = "ramereth"
  role     = "maintainer"
}
