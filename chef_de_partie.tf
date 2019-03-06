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

resource "github_team_membership" "MarkGibbons" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "MarkGibbons"
  role     = "member"
}

resource "github_team_membership" "snkutlu" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "snkutlu"
  role     = "member"
}

resource "github_team_membership" "ev0ldave" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "ev0ldave"
  role     = "member"
}

resource "github_team_membership" "gsreynolds" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "gsreynolds"
  role     = "member"
}

resource "github_team_membership" "atheiman" {
  team_id  = "${github_team.Chef_de_partie.id}"
  username = "atheiman"
  role     = "member"
}
