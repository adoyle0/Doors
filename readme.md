# Doors are sturdier than windows

The idea is a one liner to have a quick workbench, like flipping a door on its side for a quick desk.

I'm writing speedrun install scripts for my personal desktop environment that is:

1. Reliable
1. Fast
1. Made from readily available components
1. Simple (see above)
1. Decent looking

I try to use the terminal as much as possible for performance and also so it's the same experience whether 
you're at the computer or connected via ssh.

Use as much or as little as you need.

## Features

### Shell/Base

- [Yay](https://github.com/Jguer/yay) - Package manager with AUR support (Arch only)
- [rsync](https://rsync.samba.org/) - For my 'push' alias
- [sl](https://github.com/eyJhb/sl) - For when you're too fast
- [btop](https://github.com/aristocratos/btop) - Top++
- [neovim](https://github.com/neovim/neovim) - Blazingly fast editor
- [byobu](https://www.byobu.org/) - Comfy multiplexer
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) - Community enhancements for zsh. Easier than DIY
- [nnn](https://github.com/jarun/nnn) - Lightning fast file manager
- [lf](https://github.com/gokcehan/lf) - File manager like [ranger](https://github.com/ranger/ranger) but faster
- [stpv](https://github.com/Naheel-Azawy/stpv) (via AUR) - For lf previews

### Graphical environment

Business:
- [AwesomeWM](https://awesomewm.org/) - Fast and light Tiling WM configured with lua
- [kitty](https://github.com/kovidgoyal/kitty) - Fast terminal with GPU acceleration and image support
- [redshift](https://github.com/jonls/redshift) - Easier on the eyes at night
- [picom](https://github.com/yshui/picom) - Compositing
- [unclutter](https://github.com/Airblader/unclutter-xfixes) - Hide mouse cursor after inactivity
- [xclip](https://github.com/astrand/xclip) - Make clipboard work between terminal and gui
- [playerctl](https://github.com/altdesktop/playerctl) - Handle media keys
- [acpi](https://archlinux.org/packages/community/x86_64/acpi/) - Power/thermal stuff, standby, etc. You want this for a desktop

Eye Candy:
- [nitrogen](https://github.com/l3ib/nitrogen/) - I use it in my wal script to set wallpaper spanning across multiple screens
- [pywal](https://github.com/dylanaraps/pywal) - Set whole system color scheme from wallpaper colors 
- [pywal-discord](https://github.com/FilipLitwora/pywal-discord) - See above
- [wal-telegram](https://github.com/guillaumeboehm/wal-telegram) - See above
- [Pywalfox](https://github.com/Frewacom/pywalfox) - See above

## Install
You should have an [Arch](https://archlinux.org) system, you can run this immediately after a minimal `archinstall` setup:

If you want recommendations for [archinstall](https://wiki.archlinux.org/title/Archinstall) I'll say:

- [Btrfs](https://wiki.archlinux.org/title/Btrfs)
- I personally dislike [Swap](https://wiki.archlinux.org/title/Swap) (don't run out of ram if you don't have swap) 
- [PipeWire](https://wiki.archlinux.org/title/PipeWire)
- [linux-zen](https://wiki.archlinux.org/title/Kernel)
- [NetworkManager](https://wiki.archlinux.org/title/NetworkManager)
- Whatever else you want

Shell install also works on Ubuntu Server 22.04 so it should work on any buntu or Mint, Pop, etc. and maybe Debian too but 
packer is broken for some reason at least on minimum (Ubuntu Server 22.04) install 

### Quick shell (start here):
As your new user in your new user's home directory run: (will overwrite some user files)

1. ```curl https://doordesk.net/setup | bash```

2. Log out and log back in

### Graphical environment
If you want a graphical environment run: (Arch only)

`.scripts/doors/.installdeps_full_arch`

to get the rest and then:

```startx``` to load it.

but it might be missing some things depending on your install profile (still testing)

## Post Install
1. Neovim will be confused on first start until `:PackerSync` is run

### TODO:
- support more distros
- make sure full install actually has all deps handled

