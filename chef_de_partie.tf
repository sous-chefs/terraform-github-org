resource "github_team" "Chef_de_partie" {
  name        = "chef-de-partie"
  description = "Chef de partie"
  privacy     = "closed"
}

# Memberships
resource "github_team_membership" "atomic-penguin" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "atomic-penguin"
  role     = "member"
}

resource "github_team_membership" "atrull" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "atrull"
  role     = "member"
}

resource "github_team_membership" "axelrtgs" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "axelrtgs"
  role     = "member"
}

resource "github_team_membership" "BackSlasher" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "BackSlasher"
  role     = "member"
}

resource "github_team_membership" "brianhays" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "brianhays"
  role     = "member"
}

resource "github_team_membership" "coderanger" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "coderanger"
  role     = "member"
}

resource "github_team_membership" "Dylan-M" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "Dylan-M"
  role     = "member"
}

resource "github_team_membership" "emachnic" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "emachnic"
  role     = "member"
}

resource "github_team_membership" "guilhem" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "guilhem"
  role     = "member"
}

resource "github_team_membership" "jamesonjlee" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "jamesonjlee"
  role     = "member"
}

resource "github_team_membership" "jspiewak" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "jspiewak"
  role     = "member"
}

resource "github_team_membership" "jtimberman" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "jtimberman"
  role     = "member"
}

resource "github_team_membership" "juliandunn" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "juliandunn"
  role     = "member"
}

resource "github_team_membership" "lamont-granquist" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "lamont-granquist"
  role     = "member"
}

resource "github_team_membership" "martinb3" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "martinb3"
  role     = "member"
}

resource "github_team_membership" "martinisoft" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "martinisoft"
  role     = "member"
}

resource "github_team_membership" "medyagh" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "medyagh"
  role     = "member"
}

resource "github_team_membership" "mengesb" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "mengesb"
  role     = "member"
}

resource "github_team_membership" "miketheman" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "miketheman"
  role     = "member"
}

resource "github_team_membership" "PierreRambaud" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "PierreRambaud"
  role     = "member"
}

resource "github_team_membership" "rhealitycheck" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "rhealitycheck"
  role     = "member"
}

resource "github_team_membership" "shortdudey123" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "shortdudey123"
  role     = "member"
}

resource "github_team_membership" "Sliim" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "Sliim"
  role     = "member"
}

resource "github_team_membership" "thommay" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "thommay"
  role     = "member"
}

resource "github_team_membership" "bkconrad" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "bkconrad"
  role     = "member"
}

resource "github_team_membership" "someara" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "someara"
  role     = "member"
}

resource "github_team_membership" "zuazo" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "zuazo"
  role     = "member"
}

resource "github_team_membership" "flaccid" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "flaccid"
  role     = "member"
}

resource "github_team_membership" "evan2645" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "evan2645"
  role     = "member"
}

resource "github_team_membership" "svanzoest" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "svanzoest"
  role     = "member"
}

resource "github_team_membership" "ehanlon" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "ehanlon"
  role     = "member"
}

# Owners
resource "github_team_membership" "damacus" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "jmccann" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "jmccann"
  role     = "maintainer"
}

resource "github_team_membership" "josephholsten" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "josephholsten"
  role     = "maintainer"
}

resource "github_team_membership" "luishdez" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "luishdez"
  role     = "maintainer"
}

resource "github_team_membership" "rex" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "rex"
  role     = "maintainer"
}

resource "github_team_membership" "spheromak" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "spheromak"
  role     = "maintainer"
}

resource "github_team_membership" "tas50" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "rshade" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "rshade"
  role     = "member"
}

resource "github_team_membership" "RyanJarv" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "RyanJarv"
  role     = "member"
}

resource "github_team_membership" "iennae" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "iennae"
  role     = "member"
}

resource "github_team_membership" "sbotman" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "sbotman"
  role     = "member"
}

resource "github_team_membership" "shoekstra" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "shoekstra"
  role     = "member"
}

resource "github_team_membership" "teknofire" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "teknofire"
  role     = "member"
}

resource "github_team_membership" "Raboo" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "Raboo"
  role     = "member"
}

resource "github_team_membership" "kameghamegha" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "kameghamegha"
  role     = "member"
}

resource "github_team_membership" "zamedic" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "zamedic"
  role     = "member"
}

resource "github_team_membership" "xamebax" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "xamebax"
  role     = "member"
}

# Repositories

resource "github_team_repository" "bsdcpio" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "bsdcpio"
  permission = "pull"
}

resource "github_team_repository" "chef-compliance" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "chef-compliance"
  permission = "pull"
}

resource "github_team_repository" "dhcp" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "dhcp"
  permission = "pull"
}

resource "github_team_repository" "haproxy" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "haproxy"
  permission = "pull"
}

resource "github_team_repository" "meta" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "meta"
  permission = "admin"
}

resource "github_team_repository" "mongodb" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "mongodb"
  permission = "pull"
}

resource "github_team_repository" "nano" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "nano"
  permission = "pull"
}

resource "github_team_repository" "ossec" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "ossec"
  permission = "pull"
}

resource "github_team_repository" "postgresql" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "postgresql"
  permission = "pull"
}

resource "github_team_repository" "smartmontools" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "smartmontools"
  permission = "pull"
}

resource "github_team_repository" "unbound" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "unbound"
  permission = "pull"
}

resource "github_team_repository" "ruby_build" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "ruby_build"
  permission = "pull"
}

resource "github_team_repository" "ruby_rbenv" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "ruby_rbenv"
  permission = "pull"
}

resource "github_team_repository" "varnish" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "varnish"
  permission = "pull"
}

resource "github_team_repository" "swap" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "swap"
  permission = "pull"
}

resource "github_team_repository" "sc-mysql" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "sc-mysql"
  permission = "pull"
}

resource "github_team_repository" "mysql_database" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "mysql_database"
  permission = "pull"
}

resource "github_team_repository" "line" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "line-cookbook"
  permission = "pull"
}

resource "github_team_repository" "mac_os_x" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "mac_os_x"
  permission = "pull"
}
