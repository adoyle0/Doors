# Doors are sturdier than windows

This is my personal desktop environment that is:

1. Reliable
1. Fast
1. Made from readily available components
1. Simple (see above)
1. Decent looking

I try to use the terminal as much as possible for performance (I use old hardware) and so it's the same experience whether you're hands-on or remote. If it's not here then you probably don't need it

This started as a script for quick deployment of some tools when connected to a remote system and then evolved into including the rest(almost) of my environment and configs as well. Now it's how I store and sync configs between my different systems and bootstrap a fresh install

## Features

### Base Shell

The meat and potatoes

- [Yay](https://github.com/Jguer/yay) - Easier to use Arch package manager that supports AUR
- [bat](https://github.com/sharkdp/bat) -  Better cat for quickly viewing files
- [btop](https://github.com/aristocratos/btop) - Top++
- [byobu](https://www.byobu.org/) - Comfy multiplexer
- [fd](https://github.com/sharkdp/fd) - Alternative to find, used by bat and made by the same guy
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder also used by telescope(nvim plugin)
- [man-db and man-pages](https://man-db.nongnu.org/) - To RTFM
- [mosh](https://mosh.org/) - MObile SHell, like ssh but better with a bad connection
- [neovim](https://github.com/neovim/neovim) - Edit text blazingly fast (even over ssh!)
- [nnn](https://github.com/jarun/nnn) - Lightning fast file manager
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) - Community enhancements for zsh. Easier than DIY
- [pywal](https://github.com/dylanaraps/pywal) - Set whole system color scheme from wallpaper colors 
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Extremely fast grep replacement
- [rsync](https://rsync.samba.org/) - For my 'push' alias
- [sl](https://github.com/eyJhb/sl) - For when you're too fast
- [unrar](https://www.rarlab.com/rar_add.htm) - For decomressing .rar
- [wget](https://www.gnu.org/software/wget/wget.html) - Tool to get things from the web
- [zsh](https://www.zsh.org/) - Comfy shell

### GUI

AwesomeWM starter kit

Base:
- [acpi](https://wiki.archlinux.org/title/ACPI_modules) - For battery widget
- [alacritty](https://github.com/alacritty/alacritty) - Terminal emulator
- [arandr](https://christian.amsuess.com/tools/arandr) - To configure screens
- [awesome](https://awesomewm.org/) - Window manager
- [bluez](https://www.bluez.org/) - Bluetooth tools
- [chromium](https://www.chromium.org/Home/) - Backup browser
- [firefox-developer-edition](https://www.mozilla.org/en-US/firefox/developer/) - Main browser
- [font-awesome](https://fontawesome.com/) - Icon font
- [maim](https://github.com/naelstrof/maim) - Screenshot tool, script included in bin for ease of use
- [nsxiv](https://nsxiv.codeberg.page/) - Image viewer
- [picom](https://github.com/yshui/picom) - Vsync, shadows, transparency, etc
- [playerctl](https://github.com/altdesktop/playerctl) - For controlling media playback
- [polkit-gnome](https://wiki.archlinux.org/title/Polkit) - GTK polkit prompt
- [redshift](https://github.com/jonls/redshift) - Shifts screen to red at night to be easier on the eyes
- [unclutter](https://github.com/Airblader/unclutter-xfixes) - Hides the cursor after inactivity
- [xclip](https://github.com/astrand/xclip) - Make clipboard work across programs
- [xorg-server](https://wiki.archlinux.org/title/Xorg) - Displays graphics
- [xorg-xinit](https://wiki.archlinux.org/title/Xinit) - Starts the X server
- [xorg-xrandr](https://wiki.archlinux.org/title/xrandr) - Configures monitors

### Extras:

Eye candy, bloat, stuff that won't install on ARM devices

- [beautiful-discord-git](https://github.com/leovoel/BeautifulDiscord) - Loads custom discord theme
- [caprine](https://sindresorhus.com/caprine/) - Facebook messenger
- [discord](https://discord.com/) - Discord
- [gimp](https://www.gimp.org/) - Image editor
- [python-pywalfox](https://github.com/frewacom/pywalfox) - Themes firefox with pywal colors
- [pywal-discord-git](https://github.com/FilipLitwora/pywal-discord) - Generates Discord theme
- [spotify-launcher](https://github.com/kpcyrd/spotify-launcher) - Handles Spotify
- [steam](https://store.steampowered.com/) - Steam
- [telegram-desktop](https://telegram.org/) - Telegram messenger
- [thunderbird](https://www.thunderbird.net) - Email client
- [wal-telegram-git](https://github.com/guillaumeboehm/wal-telegram) - Generate telegram-desktop theme


## Install
The install script clones this repo, installs a few dependencies and copies my configs to `~/.config/`. It then links `~/.xinitrc` and `~/.zprofile` to the ones copied from the repo, all while creating a **SINGLE** backup for any files that already exist. **NOTE:** Only **ONE** backup per file is saved to prevent piling up backups. It's only meant to catch small oversights and is very verbose. In other words, if you run the installer twice **IT WILL OVERWRITE THE BACKUP!**

The install script is only for Arch right now but I plan to include any distro with this software in their repos. At least the popular ones

1. Create a new user or backup your home directory if you're unsure about anything. If you have nothing to lose then go ahead and YOLO it. Just don't complain if something gets overwritten

1. ```sh <(curl -s https://doors.doordesk.net/setup)```
1. Choose your adventure
1. Log out and log back in

### Starting the GUI

Just run `startx` or start awesome from your display manager if you have one

- The mod keys are Super, Menu, and Meta
- Once in awesome press Mod + F1 for a quick reference of all keybinds

## Post Install

### Colors
Some manual setup is required for theming if you want eye candy. My scripts should handle everything else
- Install [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/) for firefox, then open it and click the "Fetch Pywal colors" button. You shouldn't have to touch it ever again
- Point telegram to [wal-telegram](https://github.com/guillaumeboehm/wal-telegram#set-the-color-palette)'s generated theme. It should handle itself from here

## Future:
- Polish nvim
- nnn setup
- posix compliance
- Support more distros
- Add color to setup cause why not?
