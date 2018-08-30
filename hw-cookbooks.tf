module "aptly" {
  source         = "modules/repository"
  name           = "aptly"
  cookbook_team  = "${github_team.Chef_de_partie.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

module "control_groups" {
  source         = "modules/repository"
  name           = "control_groups"
  cookbook_team  = "${github_team.Chef_de_partie.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

module "nexus" {
  source         = "modules/repository"
  name           = "nexus"
  cookbook_team  = "${github_team.Chef_de_partie.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}
