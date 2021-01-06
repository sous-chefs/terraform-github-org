module "aws" {
  source                       = "./modules/repository"
  name                         = "aws"
  cookbook_team                = github_team.aws.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "aws" {
  name        = "aws"
  description = "aws Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "aws-maintainer-1" {
  team_id  = github_team.aws.id
  username = "ramereth"
  role     = "maintainer"
}
