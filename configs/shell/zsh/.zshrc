#!/bin/zsh

if test -d ~/.oh-my-zsh; then
    ZSH=~/.oh-my-zsh/
else
    ZSH=/usr/share/oh-my-zsh
fi

ZSH_THEME="pygmalion-virtualenv"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git vi-mode virtualenv python)

# vi-mode
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# /comfy/
alias \
v="vim ." \
x="exit" \
ka="killall" \
bb="byobu" \
t="tree -L" \
glow="clear && glow" \
push="rsync -avzP" \
vs="source bin/activate" \
vd="deactivate" \
drm='docker rm -vf $(docker ps -aq)' \
drmi='docker rmi -f $(docker images -aq)' \
drmv='docker volume rm $(docker volume ls -q)' \
dicheck='rsync -havn . /dev/shm --exclude-from .dockerignore' \

# Shortcuts
alias \
cf="~/.config && v" \
cfh="sudo nvim /etc/hosts" \
cfk="nvim ~/.config/kitty/kitty.conf" \
cfl="nvim ~/.config/lf/lfrc" \
cfm="nvim ~/.config/mako/config" \
cfp="nvim ~/.zprofile" \
cfr="nvim ~/.config/river/init" \
cfv="~/.config/nvim && v" \
cfw="nvim ~/.config/waybar/config" \
cfws="nvim ~/.config/waybar/style.css" \
cfz="nvim ~/.config/zsh/.zshrc" \

# Add verbosity
alias \
cp="cp -iv" \
mv="mv -iv" \
rm="rm -vI" \
mkd="mkdir -pv" \

# Add color
alias \
ls="ls -hN --color=auto --group-directories-first" \
grep="grep --color=auto" \
diff="diff --color=auto" \
ccat="highlight --out-format=ansi" \


ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
