module "vscode" {
  source                       = "./modules/repository"
  name                         = "vscode"
  cookbook_team                = github_team.vscode.id
  description                  = "Development repository for the sc_vscode cookbook"
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "vscode" {
  name        = "vscode"
  description = "VSCode Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "vscode-maintainer-1" {
  team_id  = github_team.vscode.id
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "vscode-maintainer-2" {
  team_id  = github_team.vscode.id
  username = "damacus"
  role     = "maintainer"
}

