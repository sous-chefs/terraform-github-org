# terraform-github-org
[![Backers on Open Collective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
 [![Sponsors on Open Collective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors) 

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


## Contributors

This project exists thanks to all the people who contribute. 
<img src="https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false" /></a>


## Backers

Thank you to all our backers! 🙏 [[Become a backer](https://opencollective.com/sous-chefs#backer)]

<a href="https://opencollective.com/sous-chefs#backers" target="_blank"><img src="https://opencollective.com/sous-chefs/backers.svg?width=890"></a>


## Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website. [[Become a sponsor](https://opencollective.com/sous-chefs#sponsor)]

<a href="https://opencollective.com/sous-chefs/sponsor/0/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/0/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/1/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/1/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/2/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/2/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/3/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/3/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/4/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/4/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/5/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/5/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/6/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/6/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/7/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/7/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/8/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/8/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/9/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/9/avatar.svg"></a>


