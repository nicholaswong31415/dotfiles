source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -v

export PATH="/usr/local/sbin:$PATH"


#################################################################
#                      Command Prompt:                          #
#################################################################

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{blue}%1~%f%b %# '

# Show git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b) %r%f'
zstyle ':vcs_info:*' enable git

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
