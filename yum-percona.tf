module "yum-percona" {
  source                 = "./modules/repository"
  name                   = "yum-percona"
  cookbook_team          = github_team.yum-percona.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "yum-percona" {
  name        = "yum-percona"
  description = "yum-percona Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-percona-maintainer-1" {
  team_id  = github_team.yum-percona.id
  username = "ramereth"
  role     = "maintainer"
}
