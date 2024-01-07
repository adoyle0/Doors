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

## Some Features

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
- [mosh](https://mosh.org/) - MObile SHell, like ssh but better with a bad connection

### GUI

Business:
- [awesome](https://awesomewm.org/) - Dynamic window manager based on DWM
- [alacritty](https://github.com/alacritty/alacritty) - Fast terminal with GPU acceleration written in Rust
- [maim](https://github.com/naelstrof/maim) - Screenshot tool, with a script for ease of use

Eye Candy:
- [pywal](https://github.com/dylanaraps/pywal) - Set whole system color scheme from wallpaper colors 
- [nitrogen](https://github.com/l3ib/nitrogen/https://github.com/l3ib/nitrogen) - Wallpaper setter that allows 
stretching across multiple screens
- [picom](https://github.com/yshui/picom) - Vsync, shadows, transparency, etc
- [redshift](https://github.com/jonls/redshift) - Shifts screen to red at night to be easier on the eyes
- [unclutter](https://github.com/Airblader/unclutter-xfixes) - Hides the cursor after inactivity

## Install
The install script clones this repo, installs a few dependencies and copies my configs to `~/.config/`. It 
then links `~/.xinitrc` and `~/.zprofile` to the ones copied from the repo, all while creating a **SINGLE** 
backup for any files that already exist. NOTE: Only **ONE** backup per file is saved to prevent piling up backups. 
It's only meant to catch small oversights and is very verbose. In other words, if you run the installer twice 
**IT WILL OVERWRITE THE BACKUP!**

The install script is only for Arch right now but I plan to include any distro with this software in their repos. 
At least the popular ones

### Quick shell (start here):
Create a new user or backup your home directory if you're unsure about anything. If you have nothing to lose then 
go ahead and YOLO it. Just don't complain if something gets overwritten

1. ```bash <(curl -s https://doors.doordesk.net/setup)```
1. Log out and log back in

### GUI
- For now the setup just installs everything in one shot so you get the GUI whether you need it or not, to use it 
just run `startx` or start awesome from your display manager if you have one.
- The mod keys are Super, Menu, and Meta
- Once in awesome press Mod + F1 for a quick reference of all keybinds

## Post Install

### Colors
Some manual setup is required for theming if you want eye candy. My scripts should handle everything else
- Install [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/) for firefox, then open it 
and click the "Fetch Pywal colors" button. You shouldn't have to touch it ever again
- Point telegram to [wal-telegram](https://github.com/guillaumeboehm/wal-telegram#set-the-color-palette)'s 
generated theme. It should handle itself from here

## Known issues (aka things to fix and excuses why they aren't):
- Installer can hang at "retrieving packages" - I think this is a pacman/mirror issue. Just wait or kill 
and restart it if you're impatient. The setup should pick up where it left off

## Future:
- More granular installer (shell, gui, make some gui apps optional like messengers)
- Support more distros
- Add color to setup cause why not?
