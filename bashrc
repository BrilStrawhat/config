alias ec='emacsclient -n'
alias \:q='exit'
alias pwd='pwd | xclip -sel clip'
alias ggrep='grep -rIn'
alias ..='cd ..'
alias ...='cd ../..'

reboot() {
        read -p "Are you sure? " -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
                reboot
        fi
}
