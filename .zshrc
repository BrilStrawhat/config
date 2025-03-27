# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt autocd beep extendedglob nomatch notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/love/.zshrc'

autoload -Uz compinit select-word-style
compinit
select-word-style b
# End of lines added by compinstall

zstyle ':completion:*' menu select

# Ensure `menuselect` keymap exists before binding
() {
  zmodload zsh/complist || return  # Load the module that enables `menuselect`
 # Unbind duplicate keys before setting custom ones

  # Now apply keybindings safely
  bindkey -M menuselect '^[h' backward-char
  bindkey -M menuselect '^[l' forward-char
  bindkey -M menuselect '^[k' up-line-or-history
  bindkey -M menuselect '^[j' down-line-or-history
}

setopt share_history

bindkey '^R' history-incremental-pattern-search-backward

# Define colors
autoload -U colors && colors
PS1="[%*] %F{cyan}%~%f "

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ec='emacsclient -n'
alias \:q='exit'
# alias pwd='pwd | xclip -sel clip'
alias ggrep='grep -rIn --color=auto'
alias gegrep='grep -rIn --exclude-dir=".*" --exclude=".*"'
alias ..='cd ..'
alias ...='cd ../..'

reboot() {
        read -p "Are you sure? " -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
                /sbin/reboot
        fi
}

poweroff() {
        read -p "Are you sure? " -n 1 -r
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
                /sbin/poweroff
        fi
}

export PATH="$PATH:/home/love/dev_tools/arm-gnu-toolchain-12.2.mpacbti-rel1-x86_64-arm-none-eabi/bin"

GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"
export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"

source $HOME/.guix-profile/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-history-substring-search configuration
bindkey '\eOA' history-substring-search-up # or '\eOA'
bindkey '\eOB' history-substring-search-down # or '\eOB'

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

source /home/love/antigen.zsh

antigen bundle zsh-users/zsh-history-substring-search

antigen apply
