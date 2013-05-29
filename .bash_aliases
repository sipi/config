alias ls='ls -F --color=auto'
alias ll='ls -lh'
alias la='ls -A'

alias ..='cd ..'
alias ~='cd ~'

alias em='emacs -nw'
alias emc='emacsclient -nw'
alias emacsc='emacsclient -n'
alias emacsd='emacs --daemon && emacsclient -nc' 

alias sudo='sudo '
alias scpresume="rsync --partial --progress --rsh=ssh"

alias nautilus='nautilus --no-desktop'

mkcd(){ mkdir -p "$@" && cd "$@"; }
