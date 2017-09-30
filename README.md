# terraform-github-org

For managing the Sous Chefs Github Organisation

# Usage

## Becoming A Member

Add yourself to `modules/org_membership/main.tf`

## Adding a Repository

Create a file called `repository.tf` where repository is the name of your repository e.g. `foodcritic.tf`

Example repository with one maintainer.

```hcl
module "bsdcpio" {
  source         = "modules/repository"
  name           = "bsdcpio"
  description    = "Development repository for the bsdcpio cookbook"
  cookbook_team  = "${github_team.bsdcpio.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "bsdcpio" {
  name        = "bsdcpio"
  description = "BSDCPIO Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "bsdcpio-maintainer-1" {
  team_id  = "${github_team.bsdcpio.id}"
  username = "josephholsten"
  role     = "maintainer"
}
```

## Becoming a Cookbook maintainer

Add yourself to the repository file e.g. `ruby_rbenv.tf`

All terraform resource names must be unique. The easiest way to do this is

- copy the previous resource,
- increment the number in the name e.g. `bsdcpio-maintainer-`1 --> `bsdcpio-maintainer-2`
- change their name to yours.
