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
- [atool](https://www.nongnu.org/atool) - For working with archives, used by other programs like nnn
- [archlinux-contrib](https://github.com/archlinux/contrib) - Handy scripts for system maintenance
- [bat](https://github.com/sharkdp/bat) - Better cat for quickly viewing files
- [btop](https://github.com/aristocratos/btop) - Top++
- [byobu](https://www.byobu.org/) - Comfy multiplexer
- [coreutils](https://www.gnu.org/software/coreutils/) - Basic file, shell, and text manipulation utilities
- [fd](https://github.com/sharkdp/fd) - Alternative to find, used by bat and made by the same guy
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder also used by telescope(nvim plugin)
- [git](https://git-scm.com/) - Version control system
- [glow](https://github.com/charmbracelet/glow) - Command-line markdown renderer
- [leptosfmt](https://github.com/bram209/leptosfmt) - Formatter for [leptos](https://github.com/leptos-rs/leptos). This has to be included here or it breaks the neovim config
- [man-db and man-pages](https://man-db.nongnu.org/) - To RTFM
- [mosh](https://mosh.org/) - MObile SHell, like ssh but better with a bad connection
- [neovim](https://github.com/neovim/neovim) - Edit text blazingly fast (even over ssh!)
- [nnn](https://github.com/jarun/nnn) - Lightning fast file manager
- [npm](https://www.npmjs.com/) - Used by neovim/mason
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) - Community enhancements for zsh. Easier than DIY
- [pacman-contrib](https://gitlab.archlinux.org/pacman/pacman-contrib) - Handy scripts for system maintenance
- [rate-mirrors](https://github.com/westandskif/rate-mirrors) - Arch mirror ranking tool
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Extremely fast grep replacement
- [rsync](https://rsync.samba.org/) - For my 'push' alias
- [rubygems](https://rubygems.org/) - Used by neovim/mason
- [sl](https://github.com/eyJhb/sl) - For when you're too fast
- [tree](https://gitlab.com/OldManProgrammer/unix-tree) - Lists directories to a specified depth
- [tar](https://www.gnu.org/software/tar/) - For working with tar archives
- [unrar](https://www.rarlab.com/rar_add.htm) - For extracting rar archives
- [unzip](http://infozip.sourceforge.net/UnZip.html) - For extracting zip archives
- [wget](https://www.gnu.org/software/wget/wget.html) - Tool to get things from the web
- [zsh](https://www.zsh.org/) - Comfy shell

### GUI

AwesomeWM starter kit

Base:

- [acpi](https://wiki.archlinux.org/title/ACPI_modules) - For battery widget
- [alacritty](https://github.com/alacritty/alacritty) - Terminal emulator
- [arandr](https://christian.amsuess.com/tools/arandr) - To configure screens
- [awesome](https://awesomewm.org/) - Window manager
- [awesome-wm-widgets](https://github.com/streetturtle/awesome-wm-widgets) - Community collection of widgets for awesome
- [bluez](https://www.bluez.org/) - Bluetooth tools
- [chromium](https://www.chromium.org/Home/) - Backup browser
- [firefox-developer-edition](https://www.mozilla.org/en-US/firefox/developer/) - Main browser
- [font-awesome](https://fontawesome.com/) - Icon font
- [gnome-themes-extra](https://gitlab.gnome.org/Archive/gnome-themes-extra) - Provides dark GTK themes
- [maim](https://github.com/naelstrof/maim) - Screenshot tool, script included in bin for ease of use
- [noto-fonts, noto-fonts-cjk, noto-fonts-emoji](https://en.wikipedia.org/wiki/Noto_fonts) - Full coverage unicode fonts
- [nsxiv](https://nsxiv.codeberg.page/) - Image viewer
- [picom](https://github.com/yshui/picom) - Compositor. Provides vsync, shadows, transparency, etc
- [playerctl](https://github.com/altdesktop/playerctl) - For controlling media playback
- [polkit-gnome](https://wiki.archlinux.org/title/Polkit) - GTK polkit prompt
- [redshift](https://github.com/jonls/redshift) - Shifts screen to red at night to be easier on the eyes
- [unclutter](https://github.com/Airblader/unclutter-xfixes) - Hides the cursor after inactivity
- [wallust](https://codeberg.org/explosion-mental/wallust) - Set whole system color scheme from wallpaper colors
- [xclip](https://github.com/astrand/xclip) - Make clipboard work across programs
- [xorg-server](https://wiki.archlinux.org/title/Xorg) - Displays graphics
- [xorg-xinit](https://wiki.archlinux.org/title/Xinit) - Starts the X server
- [xorg-xrandr](https://wiki.archlinux.org/title/xrandr) - Configures monitors
- [xwallpaper](https://github.com/stoeckmann/xwallpaper) - Tiny and fast wallpaper setter for X

### Extras:

Eye candy, bloat, stuff that won't install on ARM devices. This section is more personal

- [caprine](https://sindresorhus.com/caprine/) - Facebook messenger
- [discord](https://discord.com/) - Discord
- [gimp](https://www.gimp.org/) - Image editor
- [python-pywalfox](https://github.com/frewacom/pywalfox) - Themes firefox with pywal colors
- [spotify-launcher](https://github.com/kpcyrd/spotify-launcher) - Handles Spotify
- [steam](https://store.steampowered.com/) - Steam
- [telegram-desktop](https://telegram.org/) - Telegram messenger
- [thunderbird](https://www.thunderbird.net) - Email client
- [walogram-git](https://codeberg.org/thirtysix/walogram) - Generate telegram-desktop theme

## Install

The install script clones this repo, installs a few dependencies and copies my configs to `~/.config/`. It then links `~/.xinitrc` and `~/.zprofile` to the ones copied from the repo. **THERE ARE NO BACKUPS!** Create your own if you're worried about [what may be overwritten](scripts/copy_and_link)

1. Create a new user or backup your home directory if you're unsure about anything. If you have nothing to lose then go ahead and YOLO it. Just don't complain if something gets overwritten

1. `sh <(curl -s https://doors.doordesk.net/setup)`
1. Choose your adventure
1. Log out and log back in

### Starting the GUI

`startx`

- The mod keys are Super, Menu, and Meta
- Once in awesome press Mod + F1 for a quick reference of all keybinds

## Post Install

### Colors

Some manual setup is required for theming if you want eye candy. My scripts should handle everything else

- Install [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/) for firefox, then open it and click the "Fetch Pywal colors" button. You shouldn't have to touch it ever again
- [Point telegram to walogram's generated theme](https://codeberg.org/thirtysix/walogram#applying-theme). It should handle itself from there
