module "selinuxpolicy" {
  source         = "modules/repository"
  name           = "selinux_policy"
  cookbook_team  = "${github_team.selinuxpolicy.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "selinuxpolicy" {
  name        = "selinuxpolicy"
  description = "selinuxpolicy Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "selinuxpolicy-member" {
  team_id  = "${github_team.selinuxpolicy.id}"
  username = "shortdudey123"
  role     = "member"
}

resource "github_team_membership" "selinuxpolicy-member-2" {
  team_id  = "${github_team.selinuxpolicy.id}"
  username = "BackSlasher"
  role     = "member"
}
