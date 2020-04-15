module "fail2ban" {
  source        = "./modules/repository"
  name          = "fail2ban"
  cookbook_team = github_team.fail2ban.id
}

resource "github_team" "fail2ban" {
  name        = "fail2ban"
  description = "Fail2Ban Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "fail2ban-maintainer-1" {
  team_id  = github_team.fail2ban.id
  username = "Xorima"
  role     = "maintainer"
}
