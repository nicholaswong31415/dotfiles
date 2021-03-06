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

# Command Prompt
PROMPT='%B%F{blue}%1~%f%b '

# Show git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{magenta} %b'
zstyle ':vcs_info:*' enable git

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
