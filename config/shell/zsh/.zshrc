#!/bin/zsh

if [[ -d $HOME/.oh-my-zsh ]]; then
    ZSH=$HOME/.oh-my-zsh/
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
[[ -x "$(command -v nvim)" ]] && alias vim="nvim" vimdiff="nvim -d"

# nnn shortcut
alias n="NNN_TERMINAL='alacritty' \
    NNN_FIFO=/tmp/nnn.fifo \
    NNN_PLUG='f:preview-tui' \
    nnn -P f"

# /comfy/
alias \
    bb="byobu" \
    dicheck='rsync -havn . /dev/shm --exclude-from .dockerignore' \
    drm='docker rm -vf $(docker ps -aq)' \
    drmi='docker rmi -f $(docker images -aq)' \
    drmv='docker volume rm $(docker volume ls -q)' \
    glow="clear && glow" \
    jf="sudo journalctl -f" \
    ka="killall" \
    orphans="yay -Qdtq | yay -Rns -" \
    packages="yay -Qqe" \
    push="rsync -avzP" \
    t="tree -L" \
    v="vim ." \
    vd="deactivate" \
    vs="source bin/activate" \
    x="exit" \

    # Add verbosity
alias \
    cp="cp -iv" \
    mkd="mkdir -pv" \
    mv="mv -iv" \
    rm="rm -vI" \

    # Add color
alias \
    ccat="highlight --out-format=ansi" \
    diff="diff --color=auto" \
    grep="grep --color=auto" \
    ls="ls -hN --color=auto --group-directories-first" \


    ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir "$ZSH_CACHE_DIR"
fi

source "$ZSH"/oh-my-zsh.sh
