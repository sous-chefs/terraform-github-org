module "vault" {
  source                 = "./modules/repository"
  name                   = "vault"
  cookbook_team          = github_team.vault.id
  description            = "Development repository for the hashicorp-vault cookbook"
  label_validator_config = local.label_validator_config
}

resource "github_team" "vault" {
  name        = "vault"
  description = "vault Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "vault-maintainer-1" {
  team_id  = github_team.vault.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "vault-maintainer-2" {
  team_id  = github_team.vault.id
  username = "PowerSchill"
  role     = "maintainer"
}

