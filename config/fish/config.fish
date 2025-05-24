# source /etc/profile with bash
if status is-login
    if not set -q __sourced_profile
        set -x __sourced_profile 1
        exec bash -c "\
            test -e /etc/profile && source /etc/profile
            test -e $HOME/.bash_profile && source $HOME/.bash_profile
            exec fish --login
        "
    end

    # Set path
    set -x PATH $PATH $HOME/.local/bin $HOME/.local/share/cargo/bin

    # Default programs
    set BROWSER librewolf
    set EDITOR nvim
    set VISUAL nvim
    set PAGER "bat -p"
    set TERMINAL alacritty

    # Move config files out of home and into .config
    set ANDROID_SDK_HOME $HOME/.config/android
    set CARGO_HOME $HOME/.local/share/cargo
    set GNUPGHOME $HOME/.config/gnupg
    set GOPATH $HOME/.local/share/go
    set GTK2_RC_FILES $HOME/.config/gtk-2.0/gtkrc-2.0
    set HISTFILE $HOME/.local/share/history
    set KODI_DATA $HOME/.local/share/kodi
    set LESSHISTFILE -
    set PASSWORD_STORE_DIR $HOME/.local/share/password-store
    set TMUX_TMPDIR $XDG_RUNTIME_DIR
    
    # Other program settings:
    set FZF_DEFAULT_OPTS "--layout=reverse --height 40%"
    set XZ_DEFAULTS "-T 0"


    # Disable default greeting message
    set -U fish_greeting

    # Cache command completions
    fish_update_completions

    alias vim nvim
    alias vimdiff "nvim -d"
    alias n "NNN_TERMINAL='alacritty' NNN_FIFO=/tmp/nnn.fifo NNN_PLUG='f:preview-tui' nnn -P f"

    # /comfy/
    alias bb byobu
    alias dicheck "rsync -havn . /dev/shm --exclude-from .dockerignore"
    alias drm "docker rm -vf $(docker ps -aq)"
    alias drmi "docker rmi -f $(docker images -aq)"
    alias drmv "docker volume rm $(docker volume ls -q)"
    alias glow "clear && glow"
    alias jf "sudo journalctl -f"
    alias ka killall
    alias prphans "paru -Qdtq | yay -Rns -"
    alias packages "paru -Qqe"
    alias push "rsync -avzP"
    alias t "tree -L"
    alias v "vim ."
    alias vd "deactivate
    alias vs "source bin/activate"
    alias x exit

    # Add verbosity
    alias cp "cp -iv"
    alias mkd "mkdir -pv"
    alias mv "mv -iv"
    alias rm "rm -vI"

    # Add color
    alias ccat "highlight --out-format=ansi"
    alias diff "diff --color=auto"
    alias grep "grep --color=auto"
    alias ls "ls -hN --color=auto --group-directories-first"

    set -e __sourced_profile

    # Start X at login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
