# If you want to use vi mode in the terminal uncomment this line:
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

# Changing cursor type in vi mode
function zle-keymap-select zle-line-init zle-line-finish
{
  case $KEYMAP in
      vicmd)      print -n '\033[1 q';; # block cursor
      viins|main) print -n '\033[5 q';; # line cursor
  esac
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select

# I currently don't use any executables in this directory
# export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/nicholaswong/.local/bin:$PATH"

# Command Prompt
# PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%1~%f%b $ '
PROMPT='%B%F{blue}%1~%f%b '

# Colours for directories using 'ls'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Show git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b) %r%f'
zstyle ':vcs_info:*' enable git

# Aliases
alias hack='cd ~/Documents/Development/' # only works for my particular directory setup

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
