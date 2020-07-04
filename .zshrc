bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

function zle-line-init {
  print -n '\e[5 q'
}

function zle-keymap-select {
  case $KEYMAP in
    vicmd) print -n '\e[1 q';;
    viins|main) print -n '\e[5 q';;
  esac
}

function zle-line-finish {
  print -n '\e[1 q'
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Aliases
alias hack='cd ~/Documents/Development/' # only works for my particular directory setup

# Starship Prompt
eval "$(starship init zsh)"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
