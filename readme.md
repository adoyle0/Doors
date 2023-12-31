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
- [mosh](https://mosh.org/) - MObile SHell, like ssh but better with a bad connection
### Graphical environment

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
The install script clones this repo, installs a few dependencies, then copies my configs to `$HOME/.config/` 
creating a backup for any config files that already exist. NOTE: Only ONE backup per file is saved to prevent 
piling up backups. It's only meant to catch small oversights and is very verbose. In other words, if you run 
the installer twice it will overwrite the backup.

The install script is only for Arch right now but I plan to include any distro that has these programs in their 
repos. Or at least most of them.

### Quick shell (start here):
As your new user in your new user's home directory run: (will overwrite some user files)

1. ```curl https://doors.doordesk.net/setup | bash```

2. Log out and log back in

### GUI
For now the setup just installs everything in one shot so you get the GUI whether you need it or not, to use it 
just run `startx`

### Known issues (aka things to fix and excuses why they aren't):
- Nvim complains about packer
- Awesomewm reload races the bg/color script and may not update. Just reload awesome again manually for now
- Installer can hang at "retrieving packages" - I think this is a pacman/mirror issue. Just kill and restart it, 
it'll pick up where it left off
- Xorg may hang on a black screen after a fresh install hiding a sudo password prompt behind it. Ctrl + Alt + 
Backspace to kill Xorg and then do something like `sudo echo hey && startx` as a workaround. This may be VM 
weirdness, more testing is needed
- Less can block entering sudo password for an update, may also be a weird VM thing, same workaround as above

## Future:
- More granular installer
- Support more distros
- Add color to setup cause why not?
