# Doors are sturdier than windows

This is my personal desktop environment that is:

1. Reliable
1. Fast
1. Made from readily available components
1. Simple (see above)
1. Decent looking

I try to use the terminal as much as possible for performance and also so it's the same experience whether 
you're at the computer or connected via ssh.

If it's not here then you probably don't need it.

## Most Features

### Shell/Base

- [Yay](https://github.com/Jguer/yay) - Package manager with AUR support (Arch only)
- [rsync](https://rsync.samba.org/) - For my 'push' alias
- [sl](https://github.com/eyJhb/sl) - For when you're too fast
- [btop](https://github.com/aristocratos/btop) - Top++
- [neovim](https://github.com/neovim/neovim) - Edit text blazingly fast (even over ssh)
- [byobu](https://www.byobu.org/) - Comfy multiplexer
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) - Community enhancements for zsh. Easier than DIY
- [nnn](https://github.com/jarun/nnn) - Lightning fast file manager
- [lf](https://github.com/gokcehan/lf) - File manager like [ranger](https://github.com/ranger/ranger) but faster
- [stpv](https://github.com/Naheel-Azawy/stpv) (via AUR) - For lf previews

### Graphical environment

Business:

- [river](https://github.com/riverwm/river) - Dynamic wayland compositor like DWM
- [kitty](https://github.com/kovidgoyal/kitty) - Fast terminal with GPU acceleration and image support
- [playerctl](https://github.com/altdesktop/playerctl) - Handle media keys
- [acpi](https://archlinux.org/packages/community/x86_64/acpi/) - Power/thermal stuff, standby, etc. You want this for a desktop

Eye Candy:
- [pywal](https://github.com/dylanaraps/pywal) - Set whole system color scheme from wallpaper colors 
- [pywal-discord](https://github.com/FilipLitwora/pywal-discord) - See above
- [wal-telegram](https://github.com/guillaumeboehm/wal-telegram) - See above
- [Pywalfox](https://github.com/Frewacom/pywalfox) - See above

## Install
The install script clones this repo, installs a few dependencies, then copies my configs to `$HOME/.config/` creating a backup 
for any config files that already exist. NOTE: Only one backup per file is saved to prevent piling up backups. It's only meant 
to catch small oversights and is very verbose.

Shell tested on Arch, Ubuntu Server 22.04, Fedora 37, it should work just about anywhere.

### Quick shell (start here):
As your new user in your new user's home directory run: (will overwrite some user files)

1. ```curl https://doors.doordesk.net/setup | bash```

2. Log out and log back in

## Post Install
1. Neovim will be confused on first start until `:PackerSync` is run

### TODO:
- make installer more granular
- install full DE
- support more distros
