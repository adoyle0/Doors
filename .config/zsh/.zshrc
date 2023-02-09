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

# Shortcuts
alias \
cf="~/.config && v" \
cfv="~/.config/nvim && v" \
cfa="~/.config/awesome && v" \
cfs="~/.config/shell && v" \
cfl="~/.config/lf && v" \
cfx="~/.config/x11 && v" \
cfz="~/.config/zsh && v" \
cfk="~/.config/kitty && v" \
cfp="nvim ~/.config/picom.conf" \

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

# Laziness
alias \
hosts="sudo nvim /etc/hosts" \
push="rsync -avzP " \
vs="source bin/activate" \
vd="deactivate" \

# Forget why
wget="wget --hsts-file='XDG_CACHE_HOME/wget-hsts'" \

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
