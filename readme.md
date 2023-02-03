# Doors are sturdier than windows

The idea is a one liner to have a quick workbench, like flipping a door on its side for a quick desk.

It's a bootstrap script for my personal desktop environment that is:

1. Reliable
1. Fast
1. Made from readily available components
1. Simple (see above)
1. Decent looking

Use as much or as little as you need.

## Install
You should have an [Arch](https://archlinux.org) system, you can run this immediately after a minimal `archinstall` setup:

If you want recommendations for archinstall I'll say:

- [Btrfs](https://wiki.archlinux.org/title/Btrfs)
- I personally dislike [Swap](https://wiki.archlinux.org/title/Swap) (don't run out of ram if you don't have swap) 
- [PipeWire](https://wiki.archlinux.org/title/PipeWire)
- [linux-zen](https://wiki.archlinux.org/title/Kernel)
- [NetworkManager](https://wiki.archlinux.org/title/NetworkManager)

Shell install also works on Ubuntu Server 22.04 so it should work on any buntu or Mint, Pop, etc. and maybe Debian too

### Quick shell(start here):
As your new user in your new user's home directory run: (will overwrite some user files)

1. ```curl -s https://doordesk.net/setup | bash```

2. Log out and log back in

Minimum install is the default, if you want a graphical environment run: (Arch only)

`.scripts/doors/.installdeps_full_arch`

to get the rest and then:

```startx``` to load it.

but it might be missing some things depending on your install profile (still testing)

## Post Install
1. Neovim will be confused on first start until `:PackerSync` is run

### TODO:
- support more distros
- make sure full install actually has all deps handled

