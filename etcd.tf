module "etcd" {
  source                 = "./modules/repository"
  name                   = "etcd"
  cookbook_team          = github_team.etcd.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "etcd" {
  name        = "etcd"
  description = "etcd Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "etcd-maintainer-1" {
  team_id  = github_team.etcd.id
  username = "tas50"
  role     = "maintainer"
}
