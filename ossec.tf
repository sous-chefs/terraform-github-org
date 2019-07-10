module "ossec" {
  source        = "./modules/repository"
  name          = "ossec"
  cookbook_team = github_team.ossec.id
}

resource "github_team" "ossec" {
  name        = "ossec"
  description = "ossec Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ossec-maintainer-1" {
  team_id  = github_team.ossec.id
  username = "tas50"
  role     = "maintainer"
}

