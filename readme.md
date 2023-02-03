# Doors are sturdier than windows

The idea is a one liner to have a quick workbench, like flipping a door on its side for a quick desk.

It's a bootstrap script for my personal desktop environment

Use as much or as little as you need.

## Install
You should have an [Arch](https://archlinux.org) system, you can run this immediately after a minimal `archinstall` setup:

### Quick shell:
As your new user in your new user's home directory run: (will overwrite some user files)

1. ```curl -s https://doordesk.net/setup | bash```

2. Log out and log back in

Minimum install is the default, if you want a graphical environment run:

`.scripts/installdeps_full`

to get the rest and then:

```startx``` to load it.

## Post Install
1. Neovim will be confused on first start until `:PackerSync` is run

### TODO:
- support more distros
- handle errors
- make sure full install actually has all deps handled

