module "line" {
  source        = "./modules/repository"
  name          = "line"
  description   = "Development repository for the line cookbook"
  homepage_url  = "https://supermarket.chef.io/cookbooks/line"
  cookbook_team = github_team.line.id
  status_checks = ["ci/circleci: delivery"]
}

resource "github_team" "line" {
  name        = "line"
  description = "Line Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "line-maintainer-1" {
  team_id  = github_team.line.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "line-maintainer-3" {
  team_id  = github_team.line.id
  username = "MarkGibbons"
  role     = "maintainer"
}

