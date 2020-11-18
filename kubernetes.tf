module "kubernetes" {
  source                       = "./modules/repository"
  name                         = "kubernetes"
  cookbook_team                = github_team.kubernetes.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "kubernetes" {
  name        = "kubernetes"
  description = "kubernetes Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "kubernetes-maintainer-1" {
  team_id  = github_team.kubernetes.id
  username = "ramereth"
  role     = "maintainer"
}
